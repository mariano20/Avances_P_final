void spi_enable(GPIO_TypeDef *CS_bank, uint16_t CS_pin){
	/* Use GPIO HAL to drive chip select pin low. */
	HAL_GPIO_WritePin(*CS_bank, CS_pin, GPIO_PIN_RESET);
}

void spi_disable(GPIO_TypeDef *CS_bank, uint16_t CS_pin){
	/* Use GPIO HAL to drive chip select pin high. */
	HAL_GPIO_WritePin(*CS_bank, CS_pin, GPIO_PIN_SET);
}

uint32_t bit_mask(uint8_t size, uint8_t length, uint8_t offset){
	uint8_t i;
	uint32_t bit_mask = 0x00000000;
	
	for(i=size;i>0;i--){
		bit_mask <<= 1;
		if((i <= offset) || (i > (offset + length)))
			bit_mask |= 0x1;
	}
	
	return bit_mask;
}