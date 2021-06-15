#include <stdio.h>
#include <stdint.h>

void main(){

	uint8_t i;
	uint16_t bit_mask = 0x0000;
	uint16_t mask;
	uint8_t offset = 0;
	uint32_t var = 0xfffffff9;
	
	for(i=16;i>0;i--){
		bit_mask <<= 1;
		if((i <= offset) || (i > (offset + mask)))
			bit_mask |= 0x1;
	}
	mask = (uint16_t)var;
	
	printf("mascara: %d", mask);
	
		
}
