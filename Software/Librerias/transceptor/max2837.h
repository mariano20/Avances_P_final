/*
 MAX2837 Library.
*/

#ifndef MAX2837_H
#define MAX2837_H

/* stdint for data types. Needed? */
/* #include <stdint.h> */
#include "stm32f7xx_hal.h"

/* The mixer has 32 registers, 10 bits data length. */
#define MAX2837_NUM_REGS 32
/* Registers' address */
#define RXRF_1 				0x00
#define RXRF_2 				0x01
#define LPF_1 				0x02
#define LPF_2 				0x03
/* LPF Register 3 and VGA Register 1 */
#define VGA_1 				0x04
#define VGA_2 				0x05
/* VGA Register 3 and RX_TOP SPI bits */
#define RX_TOP_SPI_1 		0x06
#define TEMP_SENSOR 		0x07
/* RX_TOP SPI bits and RX_BIAS SPI */
#define RX_TOP_SPI_2 		0x08
#define RX_TOP_SPI_3 		0x09
#define TX_TOP_SPI_1 		0x0A
#define TX_TOP_SPI_2 		0x0B
#define HPFSM_1 			0x0C
#define HPFSM_2 			0x0D
#define HPFSM_3 			0x0E
#define HPFSM_4 			0x0F
#define SPI_ENABLE_CTRL 	0x10
/* Synthesizer Fractional Divide Ratio #1 */
#define SYNTH_FRAC_DIV_MSB 	0x11
/* Synthesizer Fractional Divide Ratio #2 */
#define SYNTH_FRAC_DIV_LSB 	0x12
/* Synthesizer Integer Divide Ratio */
#define SYNTH_INT_DIV 		0x13
#define SYNTH_CFG_1 		0x14
#define SYNTH_CFG_2 		0x15
/* VCO Auto-Select (VAS) Configuration */
#define VAS 				0x16
#define LO_MISC 			0x17
#define XTAL_CFG 			0x18
#define VCO_CFG 			0x19
/*  LO Generation (LOGEN) Configuration */
#define LOGEN 				0x1A
/* PA Driver and PA Bias DAC (PADRV and PADAC) Configuration */
#define PA_CFG_1 			0x1B
#define PA_CFG_2 			0x1C
#define TX_GAIN 			0x1D
#define TX_LO_IQ 			0x1E
/* TX DC Correction Configuration */
#define TX_DC_OFFSET 		0x1F

#define FREF 40
#define ONE_MHZ 1000000

typedef enum{
	MAX2837_MODE_SHUTDOWN,
	MAX2837_MODE_STANDBY,
	MAX2837_MODE_RX
}max2837_mode;

typedef struct{
	/* SPI */
	SPI_HandleTypeDef *spiHandle;
	GPIO_TypeDef *CS_bank;
	uint16_t CS_pin;
	/* GPIO */
	GPIO_TypeDef *EN_bank;
	uint16_t EN_pin;
	uint16_t RxEN_pin;
	/* Registers */
	uint16_t regs_values[MAX2837_NUM_REGS];
	max2837_mode current_mode;
}max2837_st;

void max2837_init(max2837_st *transceiver,				/* Initial configuration. */
					SPI_HandleTypeDef *spiHandle,
					GPIO_TypeDef *CS_bank,
					uint16_t CS_pin,
					GPIO_TypeDef *EN_bank,
					uint16_t EN_pin,
					uint16_t RxEN_pin);
void max2837_read_reg(max2837_st *transceiver,			/* Retrieve register value. */
						uint8_t addr,
						uint16_t *data);
void max2837_write_reg(max2837_st *transceiver,			/* Write value into register. */
						uint8_t addr,
						uint16_t data,
						uint8_t mask,
						uint8_t offset);
uint8_t max2837_get_temp(max2837_st *transceiver);		/* Read internal temperature. */
void max2837_set_mode(max2837_st *transceiver,			/* Switch operating mode. */
						max2837_mode mode);
void max2837_set_freq(max2837_st *transceiver,			/* Set LO frequency in Hz. */
						uint32_t lo_freq);
void max2837_set_lna_gain(max2837_st *transceiver,		/* Set LNA gain. */
						uint8_t gain_db);
uint8_t max2837_set_lpf_bw(max2837_st *transceiver,		/* Configure LPF RF Bandwidth. */
						uint8_t bw);
uint8_t max2837_set_vga_gain(max2837_st *transceiver,	/* Set VGA gain. */
						uint8_t gain_db);

#endif