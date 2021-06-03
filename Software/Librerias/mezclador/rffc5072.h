/*
 RFFC5072 Library.
*/

#ifndef RFFC5072_H
#define RFFC5072_H

/* stdint for data types. Needed? */
/* #include <stdint.h> */
#include "stm32f7xx_hal.h"

/* The mixer has 31 registers, 16 bits data length. */
#define RFFC5072_NUM_REGS 31
/* Registers' address */
#define LF 			0x00
#define XO 			0x01
#define CAL_TIME 	0x02
#define VCO_CTRL 	0x03
#define CT_CAL1 	0x04
#define CT_CAL2 	0x05
#define PLL_CAL1 	0x06
#define PLL_CAL2 	0x07
#define VCO_AUTO 	0x08
#define PLL_CTRL 	0x09
#define PLL_BIAS 	0x0A
#define MIX_CONT 	0x0B
#define P1_FREQ1 	0x0C
#define P1_FREQ2 	0x0D
#define P1_FREQ3 	0x0E
#define P2_FREQ1 	0x0F
#define P2_FREQ2 	0x10
#define P2_FREQ3 	0x11
#define FN_CTRL 	0x12
#define EXT_MOD 	0x13
#define FMOD 		0x14
#define SDI_CTRL 	0x15
#define GPO 		0x16
#define T_VCO 		0x17
#define IQMOD1 		0x18
#define IQMOD2 		0x19
#define IQMOD3 		0x1A
#define IQMOD4 		0x1B
#define T_CTRL 		0x1C
#define DEV_CTRL 	0x1D
#define TEST 		0x1E
#define READBACK 	0x1F
/* Frequency synthesis constants */
#define FVCO_MAX 5400
#define F_REF 52
#define ONE_MHZ 1000000


typedef struct{
	/* SPI */
	SPI_HandleTypeDef *spiHandle;
	GPIO_TypeDef *CS_bank;
	uint16_t CS_pin;
	/* Registers */
	uint16_t regs_values[RFFC5072_NUM_REGS];
}rffc5072_st;

void rffc5072_init(rffc5072_st *mixer,				/* Initial configuration. */
					SPI_HandleTypeDef *spiHandle,
					GPIO_TypeDef *CS_bank,
					uint16_t CS_pin);
void rffc5072_read_reg(rffc5072_st *mixer,			/* Retrieve register value. */
							uint8_t addr,
							uint16_t *data);
void rffc5072_write_reg(rffc5072_st *mixer,			/* Write value into register. */
							uint8_t addr,
							uint16_t data);
uint16_t rffc5072_set_freq(rffc5072_st *mixer,		/* Set desired frequency. */
							uint16_t lo_freq);

#endif