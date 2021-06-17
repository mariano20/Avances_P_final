#include <stdio.h>
#include <stdint.h>

void modifica(int*);
int modif2(int*);
void main(){

	int var = 15;
	
	int vec[5] = {1, 0, 0, 0, 1};
	
	modifica(vec);
	
	
		
}

void modifica(int *p){
	int i;
	for(i=0;i<5;i++){
		if(*p == 0){
			printf("vec[%d]: %p\n\n", i, p);
		}
		p++;
	}
}

int modif2(int *p){
	*p = 3;
	return *p;
}