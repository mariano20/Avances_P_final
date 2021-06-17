#include "gen_clock.h"

void genclk_init(genclk_st *clockg, I2C_HandleTypeDef *i2cHandle){
	clockg->i2cHandle = i2cHandle;
	
}

uint8_t genclk_i2c_write(genclk_st *clockg,
						uint16_t mem_addr,
						uint8_t data){
							
	uint8_t dataBuf[1] = {data};
	
	if(HAL_I2C_Mem_Write_IT(clockg->i2cHandle, (uint16_t)DEV_ADDR,
							mem_addr, (uint16_t)I2C_MEMADD_SIZE_8BIT,
							dataBuf, 1) == HAL_OK)
		return 1;
	else
		return 0;
}

uint8_t genclk_i2c_read(genclk_st *clockg,
						uint16_t mem_addr,
						uint8_t *data){
	
	if(HAL_I2C_Mem_Read_IT(clockg->i2cHandle, (uint16_t)DEV_ADDR,
							mem_addr, (uint16_t)I2C_MEMADD_SIZE_8BIT,
							data, 1) == HAL_OK)
		return 1;
	else
		return 0;
}

void genclk_outEn(genclk_st *clockg, uint8_t *out_list){
	uint8_t i, OEbits;
	/* Create register byte data to enable/disable outputs */
	for(i=0;i<5;i++){
		if(*out_list == 0){
			OEbits |= (0x80 >> i);
		}
		else{
			OEbits |= (0x00 >> i);
		}
		out_list++;
	}
	/* Set clk0 slew rate to normal and output voltage to 3.3v */
	OEbits |= 0b00000111;
	/* Write register */
	genclk_i2c_write(clockg, 0x68, OEbits);	
}

