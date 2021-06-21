#include "gen_clock.h"

void genclk_init(genclk_st *clockg, I2C_HandleTypeDef *i2cHandle){
	clockg->i2cHandle = i2cHandle;
	
	/* Reverses SD/OE pin polarity */
	genclk_i2c_write(clockg, 0x10, 0b10000010);
	
	/* Set Crystal Load Capacitor Registers */
	/*
	For a Xtal CL of 8pF, the registers need to be programmed 
	with X1 = X2 = 6.92 pF to get a total 
	CL= (6.92pF+7.5pF+1.5pF)/2 = 7.9pF 
	which is the closest value to 8pF. 
	Here, Cstray = 1.5pF; Package stray = 7.5pF 
	The binary settings corresponding to this value will be: X1 = X2 = “100000”
	*/
	genclk_i2c_write(clockg, 0x12, 0b10000001);
	genclk_i2c_write(clockg, 0x13, 0b10000000);
	
	/* Configure PLL Feedback Divider */
	/*
	M = FVCO / FREF;
	M = 2600MHz / 25MHz = 104;
	*/
	genclk_i2c_write(clockg, 0x17, 0b00000110);
	genclk_i2c_write(clockg, 0x18, 0b10000000);
	
	/* VCO Calibration config, Timing Commander values */
	genclk_i2c_write(clockg, 0x1C, 0x9f);
	
	/* PLL Loop Filter Settings, Timing Commander values */
	genclk_i2c_write(clockg, 0x1E, 0xe0);
	genclk_i2c_write(clockg, 0x1F, 0x80);
	
	/* Output Divider Control Settings */
	genclk_i2c_write(clockg, 0x21, 0x81);
	genclk_i2c_write(clockg, 0x31, 0x81);
	genclk_i2c_write(clockg, 0x41, 0x81);
	genclk_i2c_write(clockg, 0x51, 0x81);
	
	
	/* Enable OUT1-4 */
	clockg->outputs_en = {0, 1, 1, 1, 1};
	genclk_outEn(clockg, clockg->outputs_en);
	
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

void genclk_fod_settings(genclk_st *clockg, uint8_t out_n, uint8_t freq_mhz){
	uint8_t n_int;
	uint16_t n_frac;
	
	/* N = INT(N) + FRAC(N) = FVCO / (Fout * 2) */
	n_int = 2600 / (freq_mhz << 1);
	/* n_frac = 2^24 * FRAC(N) */
	
	
}

