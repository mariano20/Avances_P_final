#include <stdio.h>
#include <stdint.h>

void imprimecoso();

void main(){
	/*
	uint16_t freq_mhz = 38;
	uint32_t div_frac;
	uint64_t div_rem;
	uint64_t div_cmp;
	uint8_t i = 0;
	
	div_int = 2600 / (freq_mhz << 1);
	
	div_rem = ((2600*10000000ULL) + (freq_mhz << 1) - 1) / (freq_mhz << 1);
	div_rem -= (div_int * 10000000);
	printf("n_frac= %lu\n", div_rem);
	div_rem <<= 24;
	div_rem /= 10000000;
	printf("n_int= %d\n", div_int);
	printf("n_frac= %lu\n", div_rem);
	*/
	imprimecoso();
}

void imprimecoso(){
	static uint16_t div_int = 0;
	if (div_int == 0){
		printf("div_int es cero.\n\n");
		div_int = 1;
	}
	else if (div_int == 1){
		printf("div_int es uno.\n\n");
		div_int = 2;
	}
}
