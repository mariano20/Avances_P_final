/**
  ******************************************************************************
  * @file    usbd_template.c
  * @author  MCD Application Team
  * @brief   This file provides the HID core functions.
  *
  * @verbatim
  *
  *          ===================================================================
  *                                TEMPLATE Class  Description
  *          ===================================================================
  *
  *
  *
  *
  *
  *
  * @note     In HS mode and when the DMA is used, all variables and data structures
  *           dealing with the DMA during the transaction process should be 32-bit aligned.
  *
  *
  *  @endverbatim
  *
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

/* Includes ------------------------------------------------------------------*/
#include "usbd_template.h"
#include "usbd_ctlreq.h"

#include "stm32f7xx_hal.h"

#include "max2837.h"
#include "rffc5072.h"
#include "gen_clock.h"
#include "utils.h"


/** @addtogroup STM32_USB_DEVICE_LIBRARY
  * @{
  */


/** @defgroup USBD_TEMPLATE
  * @brief usbd core module
  * @{
  */

/** @defgroup USBD_TEMPLATE_Private_TypesDefinitions
  * @{
  */
/**
  * @}
  */


/** @defgroup USBD_TEMPLATE_Private_Defines
  * @{
  */

/**
  * @}
  */


/** @defgroup USBD_TEMPLATE_Private_Macros
  * @{
  */

/**
  * @}
  */




/** @defgroup USBD_TEMPLATE_Private_FunctionPrototypes
  * @{
  */


static uint8_t USBD_TEMPLATE_Init(USBD_HandleTypeDef *pdev, uint8_t cfgidx);
static uint8_t USBD_TEMPLATE_DeInit(USBD_HandleTypeDef *pdev, uint8_t cfgidx);
static uint8_t USBD_TEMPLATE_Setup(USBD_HandleTypeDef *pdev, USBD_SetupReqTypedef *req);
static uint8_t USBD_TEMPLATE_DataIn(USBD_HandleTypeDef *pdev, uint8_t epnum);
static uint8_t USBD_TEMPLATE_DataOut(USBD_HandleTypeDef *pdev, uint8_t epnum);
static uint8_t USBD_TEMPLATE_EP0_RxReady(USBD_HandleTypeDef *pdev);
static uint8_t USBD_TEMPLATE_EP0_TxReady(USBD_HandleTypeDef *pdev);
static uint8_t USBD_TEMPLATE_SOF(USBD_HandleTypeDef *pdev);
static uint8_t USBD_TEMPLATE_IsoINIncomplete(USBD_HandleTypeDef *pdev, uint8_t epnum);
static uint8_t USBD_TEMPLATE_IsoOutIncomplete(USBD_HandleTypeDef *pdev, uint8_t epnum);

static uint8_t *USBD_TEMPLATE_GetCfgDesc(uint16_t *length);
static uint8_t *USBD_TEMPLATE_GetDeviceQualifierDesc(uint16_t *length);
/**
  * @}
  */

/** @defgroup USBD_TEMPLATE_Private_Variables
  * @{
  */


uint8_t data_out_buffer[USB_HS_MAX_PACKET_SIZE] = {};
extern max2837_st transceiver;
extern rffc5072_st mixer;
extern genclk_st clockg;
extern uint8_t max2837_temperature;
extern uint16_t max2837_rssi;
extern ADC_HandleTypeDef hadc1;

USBD_ClassTypeDef USBD_TEMPLATE_ClassDriver =
{
  USBD_TEMPLATE_Init,
  USBD_TEMPLATE_DeInit,
  USBD_TEMPLATE_Setup,
  USBD_TEMPLATE_EP0_TxReady,
  USBD_TEMPLATE_EP0_RxReady,
  USBD_TEMPLATE_DataIn,
  USBD_TEMPLATE_DataOut,
  USBD_TEMPLATE_SOF,
  USBD_TEMPLATE_IsoINIncomplete,
  USBD_TEMPLATE_IsoOutIncomplete,
  USBD_TEMPLATE_GetCfgDesc,
  NULL,
  NULL,
  USBD_TEMPLATE_GetDeviceQualifierDesc,
};

#if defined ( __ICCARM__ ) /*!< IAR Compiler */
#pragma data_alignment=4
#endif
/* USB TEMPLATE device Configuration Descriptor */
__ALIGN_BEGIN static uint8_t USBD_TEMPLATE_CfgDesc[USB_TEMPLATE_CONFIG_DESC_SIZ] __ALIGN_END =
{
  0x09, /* bLength: Configuation Descriptor size */
  USB_DESC_TYPE_CONFIGURATION, /* bDescriptorType: Configuration */
  USB_TEMPLATE_CONFIG_DESC_SIZ,/* wTotalLength: Bytes returned */
  0x00,
  0x01,         /*bNumInterfaces: 1 interface*/
  0x01,         /*bConfigurationValue: Configuration value*/
  0x00,         /*iConfiguration: Index of string descriptor describing the configuration*/
  0xC0,         /*bmAttributes: bus powered and Supports Remote Wakeup */
  0x32,         /*MaxPower 100 mA: this current is used for detecting Vbus*/

  /* Interface */
  0x09,                     /* bLength */
  USB_DESC_TYPE_INTERFACE,  /* bDescriptorType: */
  0x01,                     /* bInterfaceNumber */
  0x00,                     /* bAlternateSetting */
  0x03,                     /* bNumEndpoints */
  0x0A,                     /* bInterfaceClass */
  0x00,                     /* bInterfaceSubClass */
  0x00,                     /* bInterfaceProtocol */
  0x00,                     /* iInterface */

  /* Endpoint Bulk OUT */
  0x07,                            /* bLength */
  USB_DESC_TYPE_ENDPOINT,          /* bDescriptorType */
  TEMPLATE_EPOUT_ADDR,             /* bEndpointAddress */
  USBD_EP_TYPE_BULK,               /* bmAttributes */
  LOBYTE(USB_HS_MAX_PACKET_SIZE),  /* wMaxPacketSize */
  HIBYTE(USB_HS_MAX_PACKET_SIZE),
  0x00,                            /* bInterval */

  /* Endpoint Bulk IN */
  0x07,                             /* bLength */
  USB_DESC_TYPE_ENDPOINT,           /* bDescriptorType */
  TEMPLATE_EPIN_ADDR,               /* bEndpointAddress */
  USBD_EP_TYPE_BULK,                /* bmAttributes */
  LOBYTE(USB_HS_MAX_PACKET_SIZE),   /* wMaxPacketSize */
  HIBYTE(USB_HS_MAX_PACKET_SIZE),
  0x00                              /* bInterval */

  /* Endpoint Isochronous IN */
  0x07,                             /* bLength */
  USB_DESC_TYPE_ENDPOINT,           /* bDescriptorType */
  TEMPLATE_EPIN2_ADDR,              /* bEndpointAddress */
  USBD_EP_TYPE_ISOC,                /* bmAttributes */
  LOBYTE(USB_HS_MAX_PACKET_SIZE),   /* wMaxPacketSize */
  HIBYTE(USB_HS_MAX_PACKET_SIZE),
  0x00                              /* bInterval */


};

#if defined ( __ICCARM__ ) /*!< IAR Compiler */
#pragma data_alignment=4
#endif
/* USB Standard Device Descriptor */
__ALIGN_BEGIN static uint8_t USBD_TEMPLATE_DeviceQualifierDesc[USB_LEN_DEV_QUALIFIER_DESC] __ALIGN_END =
{
  USB_LEN_DEV_QUALIFIER_DESC,
  USB_DESC_TYPE_DEVICE_QUALIFIER,
  0x00,
  0x02,
  0x00,
  0x00,
  0x00,
  0x40,
  0x01,
  0x00,
};

/**
  * @}
  */

/** @defgroup USBD_TEMPLATE_Private_Functions
  * @{
  */

/**
  * @brief  USBD_TEMPLATE_Init
  *         Initialize the TEMPLATE interface
  * @param  pdev: device instance
  * @param  cfgidx: Configuration index
  * @retval status
  */
static uint8_t USBD_TEMPLATE_Init(USBD_HandleTypeDef *pdev, uint8_t cfgidx)
{
  USBD_LL_OpenEP(pdev, TEMPLATE_EPIN_ADDR, USBD_EP_TYPE_BULK, USB_HS_MAX_PACKET_SIZE);
  USBD_LL_OpenEP(pdev, TEMPLATE_EPOUT_ADDR, USBD_EP_TYPE_BULK, USB_HS_MAX_PACKET_SIZE);
  USBD_LL_OpenEP(pdev, TEMPLATE_EPIN2_ADDR, USBD_EP_TYPE_ISOC, USB_HS_MAX_PACKET_SIZE);
  USBD_LL_PrepareReceive(pdev, TEMPLATE_EPOUT_ADDR, data_out_buffer, USB_HS_MAX_PACKET_SIZE);
  return USBD_OK;

}

/**
  * @brief  USBD_TEMPLATE_DeInit
  *         DeInitialize the TEMPLATE layer
  * @param  pdev: device instance
  * @param  cfgidx: Configuration index
  * @retval status
  */
static uint8_t USBD_TEMPLATE_DeInit(USBD_HandleTypeDef *pdev, uint8_t cfgidx)
{
  USBD_LL_CloseEP(pdev, TEMPLATE_EPIN_ADDR);
  USBD_LL_CloseEP(pdev, TEMPLATE_EPOUT_ADDR);
  USBD_LL_CloseEP(pdev, TEMPLATE_EPIN2_ADDR);
  return USBD_OK;
}

/**
  * @brief  USBD_TEMPLATE_Setup
  *         Handle the TEMPLATE specific requests
  * @param  pdev: instance
  * @param  req: usb requests
  * @retval status
  */
static uint8_t USBD_TEMPLATE_Setup(USBD_HandleTypeDef *pdev,
                                   USBD_SetupReqTypedef *req)
{
  USBD_StatusTypeDef ret = USBD_OK;

  switch (req->bmRequest & USB_REQ_TYPE_MASK)
  {
  case USB_REQ_TYPE_CLASS:
    switch (req->bRequest)
    {
      case USB_MAX2837_SET_LO_FREQ:
        max2837_set_freq(&transceiver, (uint32_t)(pdev->pData));
        break;
      case USB_MAX2837_SET_MODE:
        max2837_set_mode(&transceiver, (max2837_mode)(req->wValue));
        break;
      case USB_MAX2837_SET_LNA_GAIN:
        max2837_set_lna_gain(&transceiver, (uint8_t)(req->wValue));
        break;
      case USB_MAX2837_SET_VGA_GAIN:
        max2837_set_vga_gain(&transceiver, (uint8_t)(req->wValue));
        break;
      case USB_MAX2837_SET_LPF_BW:
        max2837_set_lpf_bw(&transceiver, (uint8_t)(req->wValue));
        break;
      case USB_MAX2837_GET_TEMP:
        max2837_temperature = max2837_get_temp(&transceiver);
        break;
      case USB_MAX2837_GET_RSSI:
        HAL_ADC_Start(&hadc1);
        HAL_ADC_PollForConversion(&hadc1, HAL_MAX_DELAY);
        max2837_rssi = HAL_ADC_GetValue(&hadc1);
        break;
      case USB_RFFC5072_SET_LO_FREQ:
        rffc5072_set_freq(&mixer, (uint32_t)(pdev->pData));
        break;
      case USB_RFFC5072_SET_LOW_PHASENOISE:
        rffc5072_lower_phase_noise(&mixer);
        break;
      case USB_RFFC5072_ENABLE:
        rffc5072_enable(&mixer);
        break;
      case USB_RFFC5072_DISABLE:
        rffc5072_disable(&mixer);
        break;
      case USB_GENCLK_SET_FREQ:
        genclk_fod_settings(&clockg, (uint8_t)(req->wValue), (uint8_t)(req->wIndex));
        break;
      case USB_GENCLK_SET_OUTPUTS:
        genclk_outEn(&clockg, (uint8_t)(pdev->pData));
        break;
      case USB_ENABLE_BANDPASS_FILTER:
        HAL_GPIO_WritePin(Filt_Bypass_GPIO_Port, Filt_Bypass_Pin, GPIO_PIN_SET);
        HAL_GPIO_WritePin(Filtro_GPIO_Port, Filtro_Pin, GPIO_PIN_RESET);
        break;
      case USB_ENABLE_AMP:
        HAL_GPIO_WritePin(Rx_Amp_Pwr_GPIO_Port, Rx_Amp_Pwr_Pin, GPIO_PIN_RESET);
        HAL_GPIO_WritePin(Rx_Amp_Bypass_GPIO_Port, Rx_Amp_Bypass_Pin, GPIO_PIN_SET);
        HAL_GPIO_WritePin(Rx_Amp_GPIO_Port, Rx_Amp_Pin, GPIO_PIN_RESET);
        break;
      case USB_BYPASS_MIXER:
        bypass_rf_mixer(1);
        break;
      case USB_QUICK_TEST:
        tune_freq(106300000);
        break;
      case USB_TUNE_FREQ:
        tune_freq((uint32_t)(pdev->pData));
        break;

    default:
      USBD_CtlError(pdev, req);
      ret = USBD_FAIL;
      break;
    }
    break;

  case USB_REQ_TYPE_STANDARD:
    switch (req->bRequest)
    {
    default:
      USBD_CtlError(pdev, req);
      ret = USBD_FAIL;
      break;
    }
    break;

  default:
    USBD_CtlError(pdev, req);
    ret = USBD_FAIL;
    break;
  }

  return ret;
}


/**
  * @brief  USBD_TEMPLATE_GetCfgDesc
  *         return configuration descriptor
  * @param  length : pointer data length
  * @retval pointer to descriptor buffer
  */
static uint8_t *USBD_TEMPLATE_GetCfgDesc(uint16_t *length)
{
  *length = (uint16_t)sizeof(USBD_TEMPLATE_CfgDesc);
  return USBD_TEMPLATE_CfgDesc;
}

/**
* @brief  DeviceQualifierDescriptor
*         return Device Qualifier descriptor
* @param  length : pointer data length
* @retval pointer to descriptor buffer
*/
uint8_t *USBD_TEMPLATE_DeviceQualifierDescriptor(uint16_t *length)
{
  *length = (uint16_t)sizeof(USBD_TEMPLATE_DeviceQualifierDesc);
  return USBD_TEMPLATE_DeviceQualifierDesc;
}


/**
  * @brief  USBD_TEMPLATE_DataIn
  *         handle data IN Stage
  * @param  pdev: device instance
  * @param  epnum: endpoint index
  * @retval status
  */
static uint8_t USBD_TEMPLATE_DataIn(USBD_HandleTypeDef *pdev, uint8_t epnum)
{
  // A bulk transfer is complete when the endpoint does on of the following:
  // - Has transferred exactly the amount of data expected
  // - Transfers a packet with a payload size less than wMaxPacketSize or transfers a zero-length packet
  if (pdev->ep_in[epnum].total_length && !(pdev->ep_in[epnum].total_length % USB_HS_MAX_PACKET_SIZE))
  {
    pdev->ep_in[epnum].total_length = 0;
    USBD_LL_Transmit(pdev, epnum, NULL, 0);
  }
  else
    data_in_busy = 0;

  return (uint8_t)USBD_OK;
}

/**
  * @brief  USBD_TEMPLATE_EP0_RxReady
  *         handle EP0 Rx Ready event
  * @param  pdev: device instance
  * @retval status
  */
static uint8_t USBD_TEMPLATE_EP0_RxReady(USBD_HandleTypeDef *pdev)
{

  return (uint8_t)USBD_OK;
}
/**
  * @brief  USBD_TEMPLATE_EP0_TxReady
  *         handle EP0 TRx Ready event
  * @param  pdev: device instance
  * @retval status
  */
static uint8_t USBD_TEMPLATE_EP0_TxReady(USBD_HandleTypeDef *pdev)
{

  return (uint8_t)USBD_OK;
}
/**
  * @brief  USBD_TEMPLATE_SOF
  *         handle SOF event
  * @param  pdev: device instance
  * @retval status
  */
static uint8_t USBD_TEMPLATE_SOF(USBD_HandleTypeDef *pdev)
{

  return (uint8_t)USBD_OK;
}
/**
  * @brief  USBD_TEMPLATE_IsoINIncomplete
  *         handle data ISO IN Incomplete event
  * @param  pdev: device instance
  * @param  epnum: endpoint index
  * @retval status
  */
static uint8_t USBD_TEMPLATE_IsoINIncomplete(USBD_HandleTypeDef *pdev, uint8_t epnum)
{

  return (uint8_t)USBD_OK;
}
/**
  * @brief  USBD_TEMPLATE_IsoOutIncomplete
  *         handle data ISO OUT Incomplete event
  * @param  pdev: device instance
  * @param  epnum: endpoint index
  * @retval status
  */
static uint8_t USBD_TEMPLATE_IsoOutIncomplete(USBD_HandleTypeDef *pdev, uint8_t epnum)
{

  return (uint8_t)USBD_OK;
}
/**
  * @brief  USBD_TEMPLATE_DataOut
  *         handle data OUT Stage
  * @param  pdev: device instance
  * @param  epnum: endpoint index
  * @retval status
  */
static uint8_t USBD_TEMPLATE_DataOut(USBD_HandleTypeDef *pdev, uint8_t epnum)
{
  uint8_t USB_rx_count;

  USB_rx_count = USBD_GetRxCount(pdev, epnum);

  USBD_LL_PrepareReceive(pdev, TEMPLATE_EPOUT_ADDR, data_out_buffer, USB_HS_MAX_PACKET_SIZE);

  return (uint8_t)USBD_OK;
}

/**
* @brief  DeviceQualifierDescriptor
*         return Device Qualifier descriptor
* @param  length : pointer data length
* @retval pointer to descriptor buffer
*/
uint8_t *USBD_TEMPLATE_GetDeviceQualifierDesc(uint16_t *length)
{
  *length = (uint16_t)sizeof(USBD_TEMPLATE_DeviceQualifierDesc);

  return USBD_TEMPLATE_DeviceQualifierDesc;
}

/**
  * @}
  */


/**
  * @}
  */


/**
  * @}
  */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
