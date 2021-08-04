/**
  ******************************************************************************
  * @file    usbd_template_core.h
  * @author  MCD Application Team
  * @brief   Header file for the usbd_template_core.c file.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2015 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                      www.st.com/SLA0044
  *
  ******************************************************************************
  */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __USB_TEMPLATE_CORE_H
#define __USB_TEMPLATE_CORE_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include  "usbd_ioreq.h"

/** @addtogroup STM32_USB_DEVICE_LIBRARY
  * @{
  */

/** @defgroup USBD_TEMPLATE
  * @brief This file is the header file for usbd_template_core.c
  * @{
  */


/** @defgroup USBD_TEMPLATE_Exported_Defines
  * @{
  */
#define TEMPLATE_EPIN_ADDR                0x81U
#define TEMPLATE_EPOUT_ADDR               0x01U
#define TEMPLATE_EPIN2_ADDR               0x02U

#define USB_TEMPLATE_CONFIG_DESC_SIZ      39U

#define USB_MAX2837_SET_LO_FREQ           0x01U
#define USB_MAX2837_SET_MODE              0x02U
#define USB_MAX2837_SET_LNA_GAIN          0x03U
#define USB_MAX2837_SET_VGA_GAIN          0x04U
#define USB_MAX2837_SET_LPF_BW            0x05U
#define USB_MAX2837_GET_TEMP              0x06U
#define USB_MAX2837_GET_RSSI              0x10U

#define USB_RFFC5072_SET_LO_FREQ          0x07U
#define USB_RFFC5072_SET_LOW_PHASENOISE   0x08U
#define USB_RFFC5072_ENABLE               0x09U
#define USB_RFFC5072_DISABLE              0x0AU

#define USB_GENCLK_SET_FREQ               0x0BU
#define USB_GENCLK_SET_OUTPUTS            0x0CU

#define USB_ENABLE_BANDPASS_FILTER        0x0DU
#define USB_ENABLE_AMP                    0x0EU
#define USB_BYPASS_MIXER                  0x0FU
#define USB_QUICK_TEST                    0x11U
#define USB_TUNE_FREQ                     0x12U

/**
  * @}
  */


/** @defgroup USBD_CORE_Exported_TypesDefinitions
  * @{
  */

/**
  * @}
  */

typedef struct
{
  uint32_t data[USB_HS_MAX_PACKET_SIZE / 4U];      /* Force 32bits alignment */
  uint8_t  *RxBuffer;
  uint8_t  *TxBuffer;
  uint32_t RxLength;
  uint32_t TxLength;

  __IO uint32_t TxState;
  __IO uint32_t RxState;
} USBD_TEMPLATE_HandleTypeDef;

/** @defgroup USBD_CORE_Exported_Macros
  * @{
  */

/**
  * @}
  */

/** @defgroup USBD_CORE_Exported_Variables
  * @{
  */

extern USBD_ClassTypeDef USBD_TEMPLATE_ClassDriver;
/**
  * @}
  */

/** @defgroup USB_CORE_Exported_Functions
  * @{
  */
/**
  * @}
  */

#ifdef __cplusplus
}
#endif

#endif  /* __USB_TEMPLATE_CORE_H */
/**
  * @}
  */

/**
  * @}
  */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
