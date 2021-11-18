#include "Drivers/rffc5072.h"
#include "Drivers/utils.h"

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
	/* Clear SPI flags. */
	mixer->mixer_read_flg = 0;
	mixer->mixer_write_flg = 0;
	/* Load default registers' values. */
	uint8_t i = 0;
	for(i=0;i<RFFC5072_NUM_REGS;i++){
		rffc5072_write_reg(mixer, rffc5072_regs_address[i], rffc5072_regs_default[i], 0, 0);
	}
	/* p2n: 1, p2lodiv: 2^0=1, p2presc: divide by 4, p2vcosel: 0 (vco1) */
	rffc5072_write_reg(mixer, P2_FREQ1, 0x0088, 16, 0);	/* 0000000010001000 */
	/* half-duplex, minimun mixer current */
	rffc5072_write_reg(mixer, MIX_CONT, 0x0000, 16, 0);
	/* Auto VCO */
	rffc5072_write_reg(mixer, VCO_AUTO, 0xff00, 16, 0);	/* 1111111100000000 */
	/* Set LO to 2506.3 MHz for tuning to a local known FM station */
	/*rffc5072_set_freq(mixer, 2506300000);*/
	/* 4-wire SPI control, enable part */
	rffc5072_write_reg(mixer, SDI_CTRL, 0xf000, 16, 0);	/* 1111000000000000 */
}

void rffc5072_read_reg(rffc5072_st *mixer, uint8_t addr){
	/*
	First send 9 bits, then receive 16 bits.
	1st bit undefined, 2nd is set high, 
	then the 7 bits register address.
	*/
	uint8_t txDataBuf[2] = {(((addr & 0x7f) | 0x80) >> 1), (addr << 7)};
	mixer->current_addr = addr;
	spi_enable(mixer->CS_bank, mixer->CS_pin);
	if((HAL_SPI_Transmit_IT(mixer->spiHandle, txDataBuf, sizeof(txDataBuf))) == HAL_OK){
		mixer->mixer_read_flg = 1;
	}
	else{
		mixer->mixer_read_flg = 0;
		spi_disable(mixer->CS_bank, mixer->CS_pin);
		//lcd_clear();
		//lcd_send_string("Mix_r_err SPI Tx");
		/* falta manejo de error */
	}
}

void rffc5072_write_reg(rffc5072_st *mixer, uint8_t addr, uint16_t data, uint8_t mask, uint8_t offset){
	/*
	Send 25 bits.
	1st bit undefined, 2nd is set low, 
	then the 7 bits register address 
	and finally the 16 data bits.
	*/
	uint8_t data_split[3];
	uint8_t txDataBuf[4];
	uint16_t bit_masko;
	
	if(mask < 16){
		bit_masko = bit_mask(16, mask, offset);
		data = (mixer->regs_values[addr] & bit_masko) | data;
	}
	data_split[0] = (uint8_t)(data >> 9);
	data_split[1] = (uint8_t)(data >> 1);
	data_split[2] = (uint8_t)(data << 7);
	txDataBuf[0] = ((addr & 0x7f) >> 2);
	txDataBuf[1] = ((addr << 7) | data_split[0]);
	txDataBuf[2] = data_split[1];
	txDataBuf[3] = data_split[2];
	mixer->txData_temp = data;

	mixer->current_addr = addr;
	spi_enable(mixer->CS_bank, mixer->CS_pin);
	if((HAL_SPI_Transmit_IT(mixer->spiHandle, txDataBuf, sizeof(txDataBuf))) == HAL_OK){
		mixer->mixer_write_flg = 1;
	}
	else{
		mixer->mixer_write_flg = 0;
		spi_disable(mixer->CS_bank, mixer->CS_pin);
		//lcd_clear();
		//lcd_send_string("Mix_w_err SPI Tx");
		/* falta manejo de error */
	}
}

void rffc5072_set_freq(rffc5072_st *mixer, uint32_t lo_freq_hz){
	uint8_t n_lo;
	uint8_t lo_div;
	uint8_t intlog2 = 0;
	uint8_t fbkdiv;
	uint16_t n;	/* int(n_div) */
	uint64_t n_div_decimal;	/* n_div - n */
	uint64_t nummsb;
	uint32_t numlsb;
	uint16_t lo_freq_mhz;
	uint32_t lo_freq_decimal;
	uint16_t f_tmp;
	uint32_t fvco_dec;
	uint32_t fvco_int;
	uint16_t p2_freq1_reg;
	
	
	/* Define new format for frequency: MMM.HHHHH (12 bits + 20 bits) */
	lo_freq_mhz = lo_freq_hz / ONE_MHZ;						/* Convert from Hz to MHz */
	/*uint32_t freq_aux = lo_freq_mhz << 20; 				/* Store MHz part in the 12 MSBs */
	/*lo_freq_mhz *= ONE_MHZ;								/* Keep MHz and discard decimal part */
	lo_freq_decimal = lo_freq_hz - (lo_freq_mhz * ONE_MHZ);	/* Keep decimal part in Hz */
	/*freq_aux |= lo_freq_decimal;							/* Full frequency in custom format */
	
	f_tmp = FVCO_MAX / lo_freq_mhz;
	/* Compute log2 of f_tmp and round down */
	while(f_tmp > 1){
		f_tmp >>= 1;
		intlog2++;
	}
	n_lo = intlog2;
	lo_div = (1 << n_lo);	/* 2^n_lo */
	
	fvco_dec = lo_div * lo_freq_decimal;
	fvco_int = lo_div * lo_freq_mhz;
	while(fvco_dec > ONE_MHZ){
		fvco_dec -= ONE_MHZ;
		fvco_int++;
	}
	mixer->fvco_int = fvco_int;
	mixer->fvco_dec = fvco_dec;
	
	if((lo_div * lo_freq_hz) < 3200000000ULL){
		fbkdiv = 2;
	}else{
		fbkdiv = 4;
	}
	
	fvco_int *= ONE_MHZ;
	fvco_int /= (fbkdiv * F_REF);
	n = fvco_int / ONE_MHZ;
	fvco_dec /= (fbkdiv * F_REF);
	n_div_decimal = ((fvco_int - (n * ONE_MHZ)) + fvco_dec);
	while(n_div_decimal > ONE_MHZ){
		n_div_decimal -= ONE_MHZ;
		n++;
	}
	nummsb = (n_div_decimal << 16) / ONE_MHZ;
	numlsb = (((n_div_decimal << 16) - (nummsb * ONE_MHZ)) << 8) / ONE_MHZ;
	
	/* Load calculated values to registers */
	p2_freq1_reg = ((n << 7) | (lo_div << 4) | (fbkdiv << 2)) & 0xffff;
	rffc5072_disable(mixer);
	rffc5072_write_reg(mixer, P2_FREQ1, p2_freq1_reg, 14, 2);
	rffc5072_write_reg(mixer, P2_FREQ2, ((uint16_t)nummsb & 0xffff), 16, 0);
	rffc5072_write_reg(mixer, P2_FREQ3, ((uint8_t)numlsb & 0xff), 8, 8);
	rffc5072_enable(mixer);
}

void rffc5072_lower_phase_noise(rffc5072_st *mixer){
	uint32_t fvco_dec = mixer->fvco_dec;
	uint32_t fvco_int = mixer->fvco_int;
	uint16_t n;	/* int(n_div) */
	uint64_t n_div_decimal;	/* n_div - n */
	uint64_t nummsb;
	uint32_t numlsb;
	uint8_t fbkdiv = 2;
	
	fvco_int *= ONE_MHZ;
	fvco_int /= (fbkdiv * F_REF);
	n = fvco_int / ONE_MHZ;
	fvco_dec /= (fbkdiv * F_REF);
	n_div_decimal = ((fvco_int - (n * ONE_MHZ)) + fvco_dec);
	while(n_div_decimal > ONE_MHZ){
		n_div_decimal -= ONE_MHZ;
		n++;
	}
	nummsb = (n_div_decimal << 16) / ONE_MHZ;
	numlsb = (((n_div_decimal << 16) - (nummsb * ONE_MHZ)) << 8) / ONE_MHZ;
	
	/* Load calculated values to registers */
	rffc5072_write_reg(mixer, P2_FREQ1, n, 9, 7);
	rffc5072_write_reg(mixer, P2_FREQ1, fbkdiv, 2, 2);
	rffc5072_write_reg(mixer, P2_FREQ2, ((uint16_t)nummsb & 0xffff), 16, 0);
	rffc5072_write_reg(mixer, P2_FREQ3, ((uint8_t)numlsb & 0xff), 8, 8);
}

void rffc5072_enable(rffc5072_st *mixer){
	rffc5072_write_reg(mixer, SDI_CTRL, 1, 1, 14);
}

void rffc5072_disable(rffc5072_st *mixer){
	rffc5072_write_reg(mixer, SDI_CTRL, 0, 1, 14);
}
