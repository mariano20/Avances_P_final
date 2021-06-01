#include <stdint.h>
#include "rffc5072.h"
#include <common/spi_bus.h>

/* Default register values. */
static const uint16_t rffc5072_regs_default[RFFC5072_NUM_REGS] = { 
	0xbefa,   /* 00 */
	0x4064,   /* 01 */
	0x9055,   /* 02 */
	0x2d02,   /* 03 */
	0xb0bf,   /* 04 */
	0xb0bf,   /* 05 */
	0x0028,   /* 06 */
	0x0028,   /* 07 */
	0xfc06,   /* 08 */
	0x8220,   /* 09 */
	0x0202,   /* 0A */
	0x4800,   /* 0B */
	0x2324,   /* 0C */
	0x6276,   /* 0D */
	0x2700,   /* 0E */
	0x2f16,   /* 0F */
	0x3b13,   /* 10 */
	0xb100,   /* 11 */
	0x2a80,   /* 12 */
	0x0000,   /* 13 */
	0x0000,   /* 14 */
	0x0000,   /* 15 */
	0x0000,   /* 16 */
	0x0000,   /* 17 */
	0x0283,   /* 18 */
	0xf00f,   /* 19 */
	0x0000,   /* 1A */
	0x000f,   /* 1B */
	0x0000,   /* 1C */
	0x1000,   /* 1D */
	0x0001   /* 1E */ };
static const uint8_t rffc5072_regs_address[RFFC5072_NUM_REGS] = {
	0x00,
	0x01,
	0x02,
	0x03,
	0x04,
	0x05,
	0x06,
	0x07,
	0x08,
	0x09,
	0x0A,
	0x0B,
	0x0C,
	0x0D,
	0x0E,
	0x0F,
	0x10,
	0x11,
	0x12,
	0x13,
	0x14,
	0x15,
	0x16,
	0x17,
	0x18,
	0x19,
	0x1A,
	0x1B,
	0x1C,
	0x1D,
	0x1E};
void rffc5072_init(rffc5072_st *mixer,
					SPI_HandleTypeDef *spiHandle,
					GPIO_TypeDef *CS_bank,
					uint16_t CS_pin){
						
	/* Store SPI params. */
	mixer->spiHandle = spiHandle;
	mixer->CS_bank = CS_bank;
	mixer->CS_pin = CS_pin;
	/* Load default registers' values. */
	int i = 0;
	for(i=0;i<RFFC5072_NUM_REGS;i++){
		rffc5072_write_reg(mixer, rffc5072_regs_address[i], rffc5072_regs_default[i]);
	}
	/* Set PLL2 values for LO=2506.3 MHz (2400 + 106.3 [fm mariano rpi]) */
	/* p2n: 1, p2lodiv: 2^0=1, p2presc: divide by 4, p2vcosel: 0 (vco1) */
	rffc5072_write_reg(mixer, P2_FREQ1, 0x0088);	/* 0000000010001000 */
	/* half-duplex, minimun mixer current */
	rffc5072_write_reg(mixer, MIX_CONT, 0x0000);
	/* 4-wire SPI control, enable part */
	rffc5072_write_reg(mixer, SDI_CTRL, 0xf000);	/* 1111000000000000 */
	/* Auto VCO */
	rffc5072_write_reg(mixer, VCO_AUTO, 0xff00);	/* 1111111100000000 */
}

/*
	hspi1.Init.DataSize = SPI_DATASIZE_16BIT
*/
void rffc5072_read_reg(rffc5072_st *mixer, uint8_t addr, uint16_t *data){
	/*
	First send 9 bits, then receive 16 bits.
	1st bit undefined, 2nd is set high, 
	then the 7 bits register address.
	*/
	uint8_t rxDataBuf[2];
	uint8_t txDataBuf[2] = {(((addr & 0x7f) | 0x80) >> 1), (addr << 7)};
	if(spi_rffc5072_read(mixer, txDataBuf, rxDataBuf) == 1){
		*data = (rxDataBuf[0] << 8) | rxDataBuf[1];
	}
	/* falta manejo de error */
}

void rffc5072_write_reg(rffc5072_st *mixer, uint8_t addr, uint16_t data){
	/*
	Send 25 bits.
	1st bit undefined, 2nd is set low, 
	then the 7 bits register address 
	and finally the 16 data bits.
	*/
	uint8_t data_split[3] = {(uint8_t)(data >> 9), (uint8_t)(data >> 1), (uint8_t)(data << 7)};
	uint8_t txDataBuf[4] = {((addr & 0x7f) >> 2), ((addr << 7) | data_split[0]), 
							data_split[1], data_split[2]};
	uint8_t status = spi_rffc5072_write(mixer, txDataBuf);
	/* falta manejo de error */
}

uint16_t rffc5072_set_freq(rffc5072_st *mixer, uint16_t lo_freq){
	uint8_t n_lo;
	uint8_t lo_div;
	uint8_t intlog2 = 0;
	uint32_t fvco;	/* MMM.DDDDD */
	uint8_t fbkdiv;
	uint16_t n_div;
	
	uint16_t f_tmp = FVCO_MAX / lo_freq;
	/* Compute log2 of f_tmp and round down */
	while(f_tmp > 1){
		f_tmp >>= 1;
		intlog2++;
	}
	n_lo = intlog2;
	lo_div = (1 << n_lo);	/* 2^n_lo */
	fvco = lo_div * lo_freq;
	
	if(fvco < 3200){
		fbkdiv = 2;
	}else{
		fbkdiv = 4;
	}
	
	n_div = fvco / (fbkdiv * F_REF);
}

