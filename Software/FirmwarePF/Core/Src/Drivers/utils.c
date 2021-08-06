#include "max2837.h"
#include "rffc5072.h"

extern max2837_st transceiver;
extern rffc5072_st mixer;

void spi_enable(GPIO_TypeDef *CS_bank, uint16_t CS_pin){
	/* Use GPIO HAL to drive chip select pin low. */
	HAL_GPIO_WritePin(*CS_bank, CS_pin, GPIO_PIN_RESET);
}

void spi_disable(GPIO_TypeDef *CS_bank, uint16_t CS_pin){
	/* Use GPIO HAL to drive chip select pin high. */
	HAL_GPIO_WritePin(*CS_bank, CS_pin, GPIO_PIN_SET);
}

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

void bypass_rf_mixer(uint8_t bypass){
	if (bypass == 0){
		HAL_GPIO_WritePin(Rx_Mix_Bypass_GPIO_Port, Rx_Mix_Bypass_Pin, GPIO_PIN_SET);
		HAL_GPIO_WritePin(Rx_Mix_GPIO_Port, Rx_Mix_Pin, GPIO_PIN_RESET);
	}
	else if (bypass == 1){
		HAL_GPIO_WritePin(Rx_Mix_Bypass_GPIO_Port, Rx_Mix_Bypass_Pin, GPIO_PIN_RESET);
		HAL_GPIO_WritePin(Rx_Mix_GPIO_Port, Rx_Mix_Pin, GPIO_PIN_SET);
	}	
}

void max1193_set_mode(max1193_mode mode){
	switch (mode)
	{
	case MAX1193_MODE_SHUTDOWN:
		HAL_GPIO_WritePin(PD0_adc_GPIO_Port, PD0_adc_Pin, GPIO_PIN_RESET);
		HAL_GPIO_WritePin(PD1_adc_GPIO_Port, PD1_adc_Pin, GPIO_PIN_RESET);
		break;
	case MAX1193_MODE_STANDBY:
		HAL_GPIO_WritePin(PD0_adc_GPIO_Port, PD0_adc_Pin, GPIO_PIN_RESET);
		HAL_GPIO_WritePin(PD1_adc_GPIO_Port, PD1_adc_Pin, GPIO_PIN_SET);
		break;
	case MAX1193_MODE_IDLE:
		HAL_GPIO_WritePin(PD0_adc_GPIO_Port, PD0_adc_Pin, GPIO_PIN_SET);
		HAL_GPIO_WritePin(PD1_adc_GPIO_Port, PD1_adc_Pin, GPIO_PIN_RESET);
		break;
	case MAX1193_MODE_NORMAL:
		HAL_GPIO_WritePin(PD0_adc_GPIO_Port, PD0_adc_Pin, GPIO_PIN_SET);
		HAL_GPIO_WritePin(PD1_adc_GPIO_Port, PD1_adc_Pin, GPIO_PIN_SET);
		break;
	
	default:
		break;
	}
}

void gpio_init(){
	/* Bandpass Filter Active. */
	HAL_GPIO_WritePin(Filt_Bypass_GPIO_Port, Filt_Bypass_Pin, GPIO_PIN_SET);
	HAL_GPIO_WritePin(Filtro_GPIO_Port, Filtro_Pin, GPIO_PIN_RESET);
	/* Amplifier Off. */
	HAL_GPIO_WritePin(Rx_Amp_Pwr_GPIO_Port, Rx_Amp_Pwr_Pin, GPIO_PIN_SET);
	HAL_GPIO_WritePin(Rx_Amp_Bypass_GPIO_Port, Rx_Amp_Bypass_Pin, GPIO_PIN_RESET);
	HAL_GPIO_WritePin(Rx_Amp_GPIO_Port, Rx_Amp_Pin, GPIO_PIN_SET);
	/* Enable Rx Mixer. */
	bypass_rf_mixer(0);
	/* Set external ADC to Standby mode. */
	max1193_set_mode(MAX1193_MODE_STANDBY);
}

void tune_freq(uint32_t desired_freq){
	uint32_t pre_IF = 2400000;
	uint32_t mixer_lo_freq, transceiver_lo_freq;

	if (desired_freq < 2300000 || desired_freq > 2700000){	
		if (desired_freq < pre_IF){
			mixer_lo_freq = pre_IF;
			transceiver_lo_freq = desired_freq + pre_IF;
		}
		else if (desired_freq > pre_IF){
			mixer_lo_freq = desired_freq - pre_IF;
			transceiver_lo_freq = pre_IF;
		}
		bypass_rf_mixer(0);
		rffc5072_set_freq(&mixer, mixer_lo_freq);
		max2837_set_freq(&transceiver, transceiver_lo_freq);
	}
	else if (desired_freq >= 2300000 && desired_freq <= 2700000){
		transceiver_lo_freq = desired_freq;
		bypass_rf_mixer(1);
		max2837_set_freq(&transceiver, transceiver_lo_freq);
	}
}

void start_read(){

}

void stop_read(){

}

void pack_iq_samples(){
	uint8_t current_channel, i;
	static uint8_t first_read = 1;
	uint8_t vec_I[8], vec_Q[8], IQ_buf[2];
	static uint8_t pow2[] = {1, 2, 4, 8, 16, 32, 64, 128};
	static uint8_t first_channel_read = (uint8_t)HAL_GPIO_ReadPin(A_B_GPIO_Port, A_B_Pin);

	current_channel = (uint8_t)HAL_GPIO_ReadPin(A_B_GPIO_Port, A_B_Pin);
	if (first_read == 1){
		if (current_channel == 1){		/* Reading Channel A */
			vec_I[0] = (uint8_t)HAL_GPIO_ReadPin(D0_GPIO_Port, D0_Pin);
			vec_I[1] = (uint8_t)HAL_GPIO_ReadPin(D1_GPIO_Port, D1_Pin);
			vec_I[2] = (uint8_t)HAL_GPIO_ReadPin(D2_GPIO_Port, D2_Pin);
			vec_I[3] = (uint8_t)HAL_GPIO_ReadPin(D3_GPIO_Port, D3_Pin);
			vec_I[4] = (uint8_t)HAL_GPIO_ReadPin(D4_GPIO_Port, D4_Pin);
			vec_I[5] = (uint8_t)HAL_GPIO_ReadPin(D5_GPIO_Port, D5_Pin);
			vec_I[6] = (uint8_t)HAL_GPIO_ReadPin(D6_GPIO_Port, D6_Pin);
			vec_I[7] = (uint8_t)HAL_GPIO_ReadPin(D7_GPIO_Port, D7_Pin);

			for(i=0;i<8;i++){
				IQ_buf[0] = IQ_buf[0] + (vec_I[i] * pow2[i]);
			}
		}
		else if (current_channel == 0){	/* Reading Channel B */
		}
		first_read = current_channel & first_channel_read;
	}
	else if (first_read == 0){
		if (current_channel == 1){		/* Reading Channel A */
			vec_I[0] = (uint8_t)HAL_GPIO_ReadPin(D0_GPIO_Port, D0_Pin);
			vec_I[1] = (uint8_t)HAL_GPIO_ReadPin(D1_GPIO_Port, D1_Pin);
			vec_I[2] = (uint8_t)HAL_GPIO_ReadPin(D2_GPIO_Port, D2_Pin);
			vec_I[3] = (uint8_t)HAL_GPIO_ReadPin(D3_GPIO_Port, D3_Pin);
			vec_I[4] = (uint8_t)HAL_GPIO_ReadPin(D4_GPIO_Port, D4_Pin);
			vec_I[5] = (uint8_t)HAL_GPIO_ReadPin(D5_GPIO_Port, D5_Pin);
			vec_I[6] = (uint8_t)HAL_GPIO_ReadPin(D6_GPIO_Port, D6_Pin);
			vec_I[7] = (uint8_t)HAL_GPIO_ReadPin(D7_GPIO_Port, D7_Pin);

			for(i=0;i<8;i++){
				IQ_buf[0] = IQ_buf[0] + (vec_I[i] * pow2[i]);
			}
		}
		else if (current_channel == 0){	/* Reading Channel B */
			vec_Q[0] = (uint8_t)HAL_GPIO_ReadPin(D0_GPIO_Port, D0_Pin);
			vec_Q[1] = (uint8_t)HAL_GPIO_ReadPin(D1_GPIO_Port, D1_Pin);
			vec_Q[2] = (uint8_t)HAL_GPIO_ReadPin(D2_GPIO_Port, D2_Pin);
			vec_Q[3] = (uint8_t)HAL_GPIO_ReadPin(D3_GPIO_Port, D3_Pin);
			vec_Q[4] = (uint8_t)HAL_GPIO_ReadPin(D4_GPIO_Port, D4_Pin);
			vec_Q[5] = (uint8_t)HAL_GPIO_ReadPin(D5_GPIO_Port, D5_Pin);
			vec_Q[6] = (uint8_t)HAL_GPIO_ReadPin(D6_GPIO_Port, D6_Pin);
			vec_Q[7] = (uint8_t)HAL_GPIO_ReadPin(D7_GPIO_Port, D7_Pin);

			for(i=0;i<8;i++){
				IQ_buf[1] = IQ_buf[1] + (vec_Q[i] * pow2[i]);
			}
		}
	}
	while()	/* coso para que cambie cuando cambie, osea, eso*/
}

void quick_test(){
	max2837_set_mode(&transceiver, MAX2837_MODE_STANDBY);
	rffc5072_disable(&mixer);
	HAL_Delay(10);
	tune_freq(106300000);
	max2837_set_mode(&transceiver, MAX2837_MODE_RX);
	rffc5072_enable(&mixer);
	max1193_set_mode(MAX1193_MODE_NORMAL);
	HAL_Delay(10);
}