#include <stdint.h>

void spi1_enable(uint8_t cs){
	/*
	Set chip select pin low.
	*/
	if (cs == 0){
		/* Use GPIO HAL to drive CS0 low. */
	}
	else if (cs == 1){
		/* Use GPIO HAL to drive CS1 low. */
	}
}

void spi1_disable(uint8_t cs){
	/*
	Set chip select pin high.
	*/
	if (cs == 0){
		/* Use GPIO HAL to drive CS0 high. */
	}
	else if (cs == 1){
		/* Use GPIO HAL to drive CS1 high. */
	}
}

uint8_t spi1_TxRx(uint8_t addr){
	uint8_t data;
	/* Use HAL_SPI_TransmitReceive_IT. */
	return data;
}
