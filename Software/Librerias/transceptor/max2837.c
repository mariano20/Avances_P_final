#include "max2837.h"
#include <common/spi_bus.h>

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
	int i = 0;
	for(i=0;i<MAX2837_NUM_REGS;i++){
		max2837_write_reg(transceiver, max2837_regs_address[i], max2837_regs_default[i]);
	}
	max2837_set_mode(transceiver, MAX2837_MODE_SHUTDOWN);
}

void max2837_write_reg(max2837_st *transceiver,	uint8_t addr, uint16_t data){
	/* 
	First bit is the R/W bit set high/low,
	then the 5 address bits and finally
	the 10 data bits.
	*/
	uint8_t txDataBuf[2];
	txDataBuf[0] = ((addr | PRIMER BIT) << 2) | (data >> 8);
	txDataBuf[1] = (uint8_t)data;
	if(spi_max2837_write(transceiver, txDataBuf) == 1){
		for(i=0;i<MAX2837_NUM_REGS;i++){
			if(max2837_regs_address[i] == addr){
				transceiver->regs_values[i] = data;
			}
		}
	}
}
					
void max2837_read_reg(max2837_st *transceiver, uint8_t addr, uint16_t *data){
	/*
	Send R/W bit and address, then
	receive the 10 data bits stored
	in the specified register.
	*/
	uint8_t txDataBuf[3] = {(addr | PRIMER BIT) << 2, 0x00, 0x00};
	uint8_t rxDataBuf[3];
	if(spi_max2837_read(transceiver, txDataBuf, rxDataBuf) == 1){
		*data = (rxDataBuf[1] << 2) | rxDataBuf[2];
		for(i=0;i<MAX2837_NUM_REGS;i++){
			if(max2837_regs_address[i] == addr){
				transceiver->regs_values[i] = data;
			}
		}
	}
}

uint8_t max2837_get_temp(max2837_st *transceiver){
	uint8_t temperature;
	/* Enable temperature sensor */
	max2837_write_reg(transceiver, RX_TOP_SPI_3, (transceiver->regs_values[9] | 0x0002));
	/* Trigger temperature sensor ADC */
	max2837_write_reg(transceiver, RX_TOP_SPI_3, (transceiver->regs_values[9] | 0x0001));
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
	max2837_write_reg(transceiver, RX_TOP_SPI_3, (transceiver->regs_values[9] & 0x03fe));
	max2837_write_reg(transceiver, RX_TOP_SPI_3, (transceiver->regs_values[9] & 0x03fd));
	
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
			HAL_GPIO_WritePin(transceiver->EN_bank, transceiver->EN_pin, GPIO_PIN_SET);
			HAL_GPIO_WritePin(transceiver->EN_bank, transceiver->RxEN_pin, GPIO_PIN_RESET);
			break;
		case MAX2837_MODE_RX:
			HAL_GPIO_WritePin(transceiver->EN_bank, transceiver->EN_pin, GPIO_PIN_SET);
			HAL_GPIO_WritePin(transceiver->EN_bank, transceiver->RxEN_pin, GPIO_PIN_SET);
			break;
	}
}

void max2837_set_freq(max2837_st *transceiver, uint16_t lo_freq){
	uint16_t div_int;
	uint32_t div_frac;
	
	/* Set R divider to 2 */
	max2837_write_reg(transceiver, SYNTH_CFG_1, (transceiver->regs_values[20] | 0x0002));
	div_int = lo_freq / 15;
	div_frac = (lo_freq * 1000000) / 15;
	div_frac -= (div_int * 1000000);
}