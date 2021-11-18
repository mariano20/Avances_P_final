/*
 Renesas 5P49V5929 Clock generator Library.
*/

#ifndef GENCLK_H
#define GENCLK_H

#include "stm32f7xx_hal.h"

#define DEV_ADDR 0x6A

typedef struct{
	I2C_HandleTypeDef *i2cHandle;
	uint8_t config;		/* Current user configuration */
	uint8_t clocks[4];	/* Current clock values */
	uint8_t cfg0[6];
	uint8_t cfg1[6];
	uint8_t cfg2[6];
	uint8_t cfg3[6];
	uint8_t outputs_en[5];
}genclk_st;

void genclk_init(genclk_st *clockg, I2C_HandleTypeDef *i2cHandle);
uint8_t genclk_i2c_write(genclk_st *clockg,
						uint16_t mem_addr,
						uint8_t data);
uint8_t genclk_i2c_read(genclk_st *clockg,
						uint16_t mem_addr,
						uint8_t *data);
/* Activate/Deactivate outputs */
void genclk_outEn(genclk_st *clockg, uint8_t *out_list);
/* Set frequency output divider values for specified frequency */
uint8_t genclk_fod_settings(genclk_st *clockg, uint8_t out_n, uint8_t freq_mhz);

#endif
