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