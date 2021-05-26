/*
	RFFC5072 Library.
*/

#ifndef RFFC5072_H
#define RFFC5072_H

/*	stdint for data types.	*/
#include <stdint.h>

/*	The mixer has 31 registers, 16 bits length.	*/
#define RFFC5072_NUM_REGS 31

typedef struct{
	uint16_t reg_values[RFFC5072_NUM_REGS];
}rffc5072_st;

void rffc5072_init(rffc5072_st* mixer_drv);	/*	Load default register values.	*/
void rffc5072_setup(rffc5072_st* mixer_drv);	/*	Mixer initial setup.	*/


#endif