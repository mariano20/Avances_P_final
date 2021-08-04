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
	HAL_GPIO_WritePin(PD0_adc_GPIO_Port, PD0_adc_Pin, GPIO_PIN_RESET);
	HAL_GPIO_WritePin(PD1_adc_GPIO_Port, PD1_adc_Pin, GPIO_PIN_SET);
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