#include <stdio.h>
#include <stdint.h>

void main(){

	uint32_t div_frac;
	uint32_t div_int;
	uint32_t div_rem;
	uint32_t div_cmp;
	uint32_t freq = 2634000000;
	uint8_t i;

	div_int = freq / 15000000;
	printf("parte entera: %d\n", div_int);
	div_rem = freq % 15000000;
	printf("resto inicial: %d\n", div_rem);
	div_frac = 0;
	div_cmp = 15000000;
	for( i = 0; i < 20; i++) {
		div_frac <<= 1;
		div_cmp >>= 1;
		if (div_rem > div_cmp) {
			div_frac |= 0x1;
			div_rem -= div_cmp;
		}
	}
	printf("parte decimal: %d\n", div_frac);
		
}