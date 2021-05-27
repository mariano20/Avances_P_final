/*
 RFFC5072 Library.
*/

#ifndef RFFC5072_H
#define RFFC5072_H

/* stdint for data types. */
#include <stdint.h>

/* The mixer has 31 registers, 16 bits length. */
#define RFFC5072_NUM_REGS 31

typedef struct{
	uint16_t reg_values[RFFC5072_NUM_REGS];
}rffc5072_st;

void rffc5072_init(rffc5072_st* mixer_drv);	/* Load default register values. */
void rffc5072_setup(rffc5072_st* mixer_drv);	/* Mixer initial setup. */
uint16_t rffc5072_get_reg_value(uint8_t addr);	/* Retrieve register value. */
void rffc5072_set_reg_value(uint8_t addr, uint16_t* data);	/* Write value into register. */


#endif