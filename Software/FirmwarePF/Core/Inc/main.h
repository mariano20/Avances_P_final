/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f7xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define SPI4_CS_Pin GPIO_PIN_4
#define SPI4_CS_GPIO_Port GPIOE
#define RSSI_Pin GPIO_PIN_2
#define RSSI_GPIO_Port GPIOC
#define SPI1_CS0_Pin GPIO_PIN_3
#define SPI1_CS0_GPIO_Port GPIOA
#define SPI1_CS1_Pin GPIO_PIN_5
#define SPI1_CS1_GPIO_Port GPIOC
#define Trx_Rx_Enable_Pin GPIO_PIN_0
#define Trx_Rx_Enable_GPIO_Port GPIOB
#define Trx_Enable_Pin GPIO_PIN_1
#define Trx_Enable_GPIO_Port GPIOB
#define PD0_adc_Pin GPIO_PIN_2
#define PD0_adc_GPIO_Port GPIOB
#define PD1_adc_Pin GPIO_PIN_11
#define PD1_adc_GPIO_Port GPIOF
#define D0_Pin GPIO_PIN_12
#define D0_GPIO_Port GPIOF
#define D1_Pin GPIO_PIN_13
#define D1_GPIO_Port GPIOF
#define D2_Pin GPIO_PIN_14
#define D2_GPIO_Port GPIOF
#define D3_Pin GPIO_PIN_15
#define D3_GPIO_Port GPIOF
#define A_B_Pin GPIO_PIN_0
#define A_B_GPIO_Port GPIOG
#define D4_Pin GPIO_PIN_1
#define D4_GPIO_Port GPIOG
#define D5_Pin GPIO_PIN_7
#define D5_GPIO_Port GPIOE
#define D6_Pin GPIO_PIN_8
#define D6_GPIO_Port GPIOE
#define D7_Pin GPIO_PIN_9
#define D7_GPIO_Port GPIOE
#define RESETX_Pin GPIO_PIN_10
#define RESETX_GPIO_Port GPIOE
#define Rx_Mix_Bypass_Pin GPIO_PIN_11
#define Rx_Mix_Bypass_GPIO_Port GPIOE
#define Rx_Mix_Pin GPIO_PIN_12
#define Rx_Mix_GPIO_Port GPIOE
#define Rx_Amp_Bypass_Pin GPIO_PIN_13
#define Rx_Amp_Bypass_GPIO_Port GPIOE
#define Rx_Amp_Pin GPIO_PIN_14
#define Rx_Amp_GPIO_Port GPIOE
#define Rx_Amp_Pwr_Pin GPIO_PIN_15
#define Rx_Amp_Pwr_GPIO_Port GPIOE
#define Filt_Bypass_Pin GPIO_PIN_10
#define Filt_Bypass_GPIO_Port GPIOB
#define Filtro_Pin GPIO_PIN_11
#define Filtro_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
