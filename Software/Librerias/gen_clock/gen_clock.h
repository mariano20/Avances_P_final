/*
 Renesas 5P49V5929 Clock generator Library.
*/

#ifndef GENCLK_H
#define GENCLK_H

#include "stm32f7xx_hal.h"

#define DEV_ADDR 0xD4

typedef struct{
	I2C_HandleTypeDef *i2cHandle;
	uint8_t config;		/* Current user configuration */
	uint8_t clocks[4];	/* Current clock values */
	uint8_t cfg0[6] = {0x00, 0x4e, 0x34, 0xe1, 0x00, 0x00};
	uint8_t cfg1[6] = {0x35, 0x4e, 0x61, 0xe1, 0x10, 0x10};
	uint8_t cfg2[6] = {0x62, 0x4e, 0x8e, 0xe1, 0x10, 0x10};
	uint8_t cfg3[6] = {0x8f, 0x4e, 0xbb, 0xe1, 0x10, 0x10};
}genclk_st;



#endif