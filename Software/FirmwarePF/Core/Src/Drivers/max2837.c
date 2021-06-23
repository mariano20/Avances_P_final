#include "max2837.h"
#include "spi_bus.h"
#include "utils.h"

static const uint16_t max2837_regs_default[MAX2837_NUM_REGS] = {
	0x150,	/* 0 */
	0x002,	/* 1 */
	0x1f4,	/* 2 */
	0x1b9,	/* 3 */
	0x00a,	/* 4 */
	0x080,	/* 5 */
	0x006,	/* 6 */
	0x000,	/* 7 */
	0x080,	/* 8 */
	0x018,	/* 9 */
	0x058,	/* 10 */
	0x016,	/* 11 */
	0x24f,	/* 12 */
	0x150,	/* 13 */
	0x1c5,	/* 14 */
	0x081,	/* 15 */
	0x01c,	/* 16 */
	0x155,	/* 17 */
	0x155,	/* 18 */
	0x153,	/* 19 */
	0x241,	/* 20 */
	0x02d,	/* 21 */
	0x1a9,	/* 22 */
	0x24f,	/* 23 */
	0x180,	/* 24 */
	0x100,	/* 25 */
	0x3ca,	/* 26 */
	0x3e3,	/* 27 */
	0x0c0,	/* 28 */
	0x3f0,	/* 29 */
	0x080,	/* 30 */
	0x000	/* 31 */};
static const uint8_t max2837_regs_address[MAX2837_NUM_REGS] = {
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
	0x1E,
	0x1F};	
void max2837_init(max2837_st *transceiver,
					SPI_HandleTypeDef *spiHandle,
					GPIO_TypeDef *CS_bank,
					uint16_t CS_pin,
					GPIO_TypeDef *EN_bank,
					uint16_t EN_pin,
					uint16_t RxEN_pin){
						
	/* Store SPI params. */
	transceiver->spiHandle = spiHandle;
	transceiver->CS_bank = CS_bank;
	transceiver->CS_pin = CS_pin;
	/* Store GPIO definitions. */
	transceiver->EN_bank = EN_bank;
	transceiver->EN_pin = EN_pin;
	transceiver->RxEN_pin = RxEN_pin;
	/* Load default registers' values. */
	uint8_t i = 0;
	for(i=0;i<MAX2837_NUM_REGS;i++){
		max2837_write_reg(transceiver, max2837_regs_address[i], max2837_regs_default[i]);
	}
	/* Enable RX quadrature generation, mixer and LNA */
	max2837_write_reg(transceiver, RXRF_1, 0b111, 3, 0);
	/* Enable SPI control of LNA and VGA */
	max2837_write_reg(transceiver, RX_TOP_SPI_2, 0b11, 2, 0);
	/* Enable lowpass filter */
	max2837_write_reg(transceiver, LPF_1, 1, 1, 0);
	/* Enable RX VGA and output MUX */
	max2837_write_reg(transceiver, VGA_1, 0b11, 2, 4);
	/* Enable RSSI */
	max2837_write_reg(transceiver, RX_TOP_SPI_1, 0b101, 3, 6);
	/* Set RXVGA HPFSM to operating mode #1 */
	max2837_write_reg(transceiver, HPFSM_3, 0, 1, 8);
	/* Set R divider to 2 */
	/*
	Modificar divisor R y ponerlo en 1
	si hay mucho ruido de fase.
	*/
	max2837_write_reg(transceiver, SYNTH_CFG_1, 0b01, 2, 1);
	/* Disable CLKOUT pin (not used) */
	max2837_write_reg(transceiver, XTAL_CFG, 0, 1, 7);
	max2837_set_mode(transceiver, MAX2837_MODE_SHUTDOWN);
}

void max2837_write_reg(max2837_st *transceiver,	uint8_t addr, uint16_t data, uint8_t mask, uint8_t offset){
	/* 
	First bit is the R/W bit set high,
	then the 5 address bits and finally
	the 10 data bits.
	*/
	uint8_t txDataBuf[2];
	uint16_t bit_mask;
	
	if(mask < 16){
		bit_mask = bit_mask(16, mask, offset);	
		data = (transceiver->regs_values[addr] & bit_mask) | data;
	}
	
	txDataBuf[0] = (((addr & 0x1f) << 2) | 0x80) | (data >> 8);
	txDataBuf[1] = (uint8_t)data;
	if(spi_max2837_write(transceiver, txDataBuf) == 1){
		transceiver->regs_values[addr] = data;
	}
}
					
void max2837_read_reg(max2837_st *transceiver, uint8_t addr, uint16_t *data){
	/*
	Send R/W bit set low and address, then
	receive the 10 data bits stored
	in the specified register.
	*/
	uint8_t txDataBuf[3] = {((addr & 0x1f) << 2), 0x00, 0x00};
	uint8_t rxDataBuf[3];
	if(spi_max2837_read(transceiver, txDataBuf, rxDataBuf) == 1){
		*data = (rxDataBuf[1] << 2) | rxDataBuf[2];
		transceiver->regs_values[addr] = data;
	}
}

uint8_t max2837_get_temp(max2837_st *transceiver){
	uint8_t temperature;
	/* Enable temperature sensor */
	max2837_write_reg(transceiver, RX_TOP_SPI_3, 1, 1, 1);
	/* Trigger temperature sensor ADC */
	max2837_write_reg(transceiver, RX_TOP_SPI_3, 1, 1, 0);
	/* Wait for conversion */
	HAL_Delay(1);
	/* Read 5 bit value */
	max2837_read_reg(transceiver, TEMP_SENSOR, (uint16_t) *temperature);
	/* Convert to celsius */
	if(temperature > 8){
		temperature -= 9;
		temperature *= 4;
	}
	/* Turn off ADC and temperature sensor */
	max2837_write_reg(transceiver, RX_TOP_SPI_3, 0, 1, 1);
	max2837_write_reg(transceiver, RX_TOP_SPI_3, 0, 1, 0);
	
	return temperature;
}

void max2837_set_mode(max2837_st *transceiver, max2837_mode mode){
	transceiver->current_mode = mode;
	switch(mode){
		case MAX2837_MODE_SHUTDOWN:
			HAL_GPIO_WritePin(transceiver->EN_bank, transceiver->EN_pin, GPIO_PIN_RESET);
			HAL_GPIO_WritePin(transceiver->EN_bank, transceiver->RxEN_pin, GPIO_PIN_RESET);
			break;
		case MAX2837_MODE_STANDBY:
			max2837_write_reg(transceiver, SPI_ENABLE_CTRL, 1, 1, 0);
			HAL_GPIO_WritePin(transceiver->EN_bank, transceiver->EN_pin, GPIO_PIN_SET);
			HAL_GPIO_WritePin(transceiver->EN_bank, transceiver->RxEN_pin, GPIO_PIN_RESET);
			break;
		case MAX2837_MODE_RX:
			HAL_GPIO_WritePin(transceiver->EN_bank, transceiver->EN_pin, GPIO_PIN_SET);
			HAL_GPIO_WritePin(transceiver->EN_bank, transceiver->RxEN_pin, GPIO_PIN_SET);
			break;
	}
}

void max2837_set_freq(max2837_st *transceiver, uint32_t lo_freq_hz){
	uint16_t div_int;
	uint32_t div_frac;
	uint32_t div_rem;
	uint32_t div_cmp;
	uint8_t i = 0;
	
	/*
	Modificar divisor R y ponerlo en 1
	si hay mucho ruido de fase.
	*/
	div_int = (uint16_t) freq / 15000000;
	div_rem = freq % 15000000;
	div_frac = 0;
	div_cmp = 15000000;
	for( i = 0; i < 20; i++) {
		div_frac <<= 1;
		div_cmp >>= 1;
		if (div_rem > div_cmp) {
			div_frac |= 0x1;
			div_rem -= div_cmp;
		}
	}
	
	/* Store N integer divider ratio */
	max2837_write_reg(transceiver, SYNTH_INT_DIV, div_int, 8, 0);
	/* Store MSB of fractional divider ratio */
	max2837_write_reg(transceiver, SYNTH_FRAC_DIV_MSB, (div_frac >> 10) & 0x3ff, 16, 0);
	/* Store LSB of fractional divider ratio */
	max2837_write_reg(transceiver, SYNTH_FRAC_DIV_LSB, div_frac & 0x3ff, 16, 0);
	
}

uint8_t max2837_set_lna_gain(max2837_st *transceiver, uint8_t gain_db){
	switch(gain_db){
		case 40:
			gain_db = 0x00;
			break;
		case 32:
			gain_db = 0x04;
			break;
		case 24:
			gain_db = 0x02;
			break;
		case 16:
			gain_db = 0x06;
			break;
		case 8:
			gain_db = 0x03;
			break;
		case 0:
			gain_db = 0x07;
			break;
		default:
			gain_db = 0x07;
			return 0;
	}
	max2837_write_reg(transceiver, RXRF_2, (gain_db << 2), 3, 2);
	return 1;
}

typedef enum{
	BW1_75MHZ,	/* 1.75 MHz */
	BW2_5MHZ,	/* 2.5 MHz */
	BW3_5MHZ,	/* 3.5 MHz */
	BW5_MHZ,	/* 5 MHz */
	BW5_5MHZ,	/* 5.5 MHz */
	BW6_MHZ,	/* 6 MHz */
	BW7_MHZ,	/* 7 MHz */
	BW8_MHZ,	/* 8 MHz */
	BW9_MHZ,	/* 9 MHz */
	BW10_MHZ,	/* 10 MHz */
	BW12_MHZ,	/* 12 MHz */
	BW14_MHZ,	/* 14 MHz */
	BW15_MHZ,	/* 15 MHz */
	BW20_MHZ,	/* 20 MHz */
	BW24_MHZ,	/* 24 MHz */
	BW28_MHZ	/* 28 MHz */
}bw_filtro;

uint8_t max2837_set_lpf_bw(max2837_st *transceiver, bw_filtro bw){
	uint8_t bw2;
	switch(bw){
		case BW1_75MHZ:
			bw2 = 0x00;
			break;
		case BW2_5MHZ:
			bw2 = 0x01;
			break;
		case BW3_5MHZ:
			bw2 = 0x02;
			break;
		case BW5_MHZ:
			bw2 = 0x03;
			break;
		case BW5_5MHZ:
			bw2 = 0x04;
			break;
		case BW6_MHZ:
			bw2 = 0x05;
			break;
		case BW7_MHZ:
			bw2 = 0x06;
			break;
		case BW8_MHZ:
			bw2 = 0x07;
			break;
		case BW9_MHZ:
			bw2 = 0x08;
			break;
		case BW10_MHZ:
			bw2 = 0x09;
			break;
		case BW12_MHZ:
			bw2 = 0x0A;
			break;
		case BW14_MHZ:
			bw2 = 0x0B;
			break;
		case BW15_MHZ:
			bw2 = 0x0C;
			break;
		case BW20_MHZ:
			bw2 = 0x0D;
			break;
		case BW24_MHZ:
			bw2 = 0x0E;
			break;
		case BW28_MHZ:
			bw2 = 0x0F;
			break;
		default:
			bw2 = 0x0F;
			return 0;
	}
	max2837_write_reg(transceiver, LPF_1, (bw2 << 4), 4, 4);
	return 1;
}

uint8_t max2837_set_vga_gain(max2837_st *transceiver, uint8_t gain_db){
	if((gain_db & 0x1) || gain_db > 62)/* 0b11111*2 */
		return 0;
		
	max2837_write_reg(transceiver, VGA_2, (31 - (gain_db >> 1)), 5, 0);
	return 1;
	/* falta manejo de error en software */
}


