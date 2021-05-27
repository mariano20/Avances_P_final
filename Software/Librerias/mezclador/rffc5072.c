#include <stdint.h>
#include "rffc5072.h"
#include <common/spi_bus.h>

static const uint8_t CS0 = 0;

void rffc5072_init(rffc5072_st* mixer_drv){
	
}

void rffc5072_setup(rffc5072_st* mixer_drv){
	
}

/*
	hspi1.Init.DataSize = SPI_DATASIZE_16BIT
*/
uint16_t rffc5072_get_reg_value(uint8_t addr){
	/*
	First send 9 bits, then receive 16 bits.
	1st bit undefined, 2nd is set high, 
	then the 7 bits register address.
	*/
	uint8_t txData[] = {0, (addr | 0x80), 0x00};	/*17 or 9 bit long?*/
	spi1_enable(CS0);
	data = spi1_TxRx(txData);
	spi1_disable(CS0);
	
	return data;
}

void rffc5072_set_reg_value(uint8_t addr, uint16_t* data){
	
}
