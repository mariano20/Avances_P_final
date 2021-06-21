#include <stdio.h>
#include <stdint.h>

void main(){

	uint16_t div_int;
	uint16_t freq_mhz = 45;
	uint32_t div_frac;
	uint32_t div_rem;
	uint32_t div_cmp;
	uint8_t i = 0;
	
	/*
	Modificar divisor R y ponerlo en 1
	si hay mucho ruido de fase.
	*/
	div_int = 2600 / (freq_mhz << 1);
	div_rem = 2600 % (freq_mhz << 1);
	div_frac = 0;
	div_cmp = freq_mhz << 1;
	for( i = 0; i < 30; i++) {
		div_frac <<= 1;
		div_cmp >>= 1;
		if (div_rem > div_cmp) {
			div_frac |= 0x1;
			div_rem -= div_cmp;
		}
	}
	
	printf("n_int= %d\n", div_int);
	printf("n_frac= %lu\n", div_frac);
}
