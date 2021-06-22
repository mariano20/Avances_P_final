#include <stdio.h>
#include <stdint.h>

void main(){

	uint16_t div_int;
	uint16_t freq_mhz = 38;
	uint32_t div_frac;
	uint64_t div_rem;
	uint64_t div_cmp;
	uint8_t i = 0;
	
	div_int = 2600 / (freq_mhz << 1);
	/* Rounding to nearest integer algorithm */
	div_rem = ((2600*10000000ULL) + (freq_mhz << 1) - 1) / (freq_mhz << 1);
	div_rem -= (div_int * 10000000);
	printf("n_frac= %lu\n", div_rem);
	div_rem <<= 24;
	div_rem /= 10000000;
	printf("n_int= %d\n", div_int);
	printf("n_frac= %lu\n", div_rem);
}
