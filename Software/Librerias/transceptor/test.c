#include <stdio.h>
#include <stdint.h>

void main(){

	uint8_t i;
	uint16_t bit_mask = 0x0000;
	uint8_t mask = 0b11;
	uint8_t offset = 0;
	
	for(i=16;i>0;i--){
		bit_mask <<= 1;
		if((i <= offset) || (i > (offset + mask)))
			bit_mask |= 0x1;
	}
	
	printf("mascara: %d", mask);
		
}
