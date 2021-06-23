void spi_enable(GPIO_TypeDef *CS_bank, uint16_t CS_pin){
	/* Use GPIO HAL to drive chip select pin low. */
	HAL_GPIO_WritePin(*CS_bank, CS_pin, GPIO_PIN_RESET);
}

void spi_disable(GPIO_TypeDef *CS_bank, uint16_t CS_pin){
	/* Use GPIO HAL to drive chip select pin high. */
	HAL_GPIO_WritePin(*CS_bank, CS_pin, GPIO_PIN_SET);
}

uint8_t spi_rffc5072_read(rffc5072_st *mixer, uint8_t *txBuf, uint8_t *rxBuf){
	uint8_t status = 1;
	spi_enable(mixer->CS_bank, mixer->CS_pin);
	/* Use HAL_SPI_Transmit_IT then HAL_SPI_Receive_IT because data is not byte aligned. */
	if((HAL_SPI_Transmit_IT(mixer->spiHandle, txBuf, sizeof(txBuf))) == HAL_OK){
		if((HAL_SPI_Receive_IT(mixer->spiHandle, rxBuf, sizeof(rxBuf))) == HAL_OK){
		}else{
			status = 0;
		}
	}else{
		status = 0;
	}
	spi_disable(mixer->CS_bank, mixer->CS_pin);
	return status;
}

uint8_t spi_rffc5072_write(rffc5072_st *mixer, uint8_t *txBuf){
	uint8_t status = 1;
	spi_enable(mixer->CS_bank, mixer->CS_pin);
	if((HAL_SPI_Transmit_IT(mixer->spiHandle, txBuf, sizeof(txBuf))) == HAL_OK){}
	else{
		status = 0;
	}
	spi_disable(mixer->CS_bank, mixer->CS_pin);
	return status;
}

uint8_t spi_max2837_read(max2837_st *transceiver, uint8_t *txBuf, uint8_t *rxBuf){
	uint8_t status = 1;
	spi_enable(transceiver->CS_bank, transceiver->CS_pin);
	if((HAL_SPI_TransmitReceive_IT(transceiver->spiHandle, txBuf, rxBuf, sizeof(txBuf))) == HAL_OK){}
	else{
		status = 0;
	}
	spi_disable(transceiver->CS_bank, transceiver->CS_pin);
	return status;
}

uint8_t spi_max2837_write(max2837_st *transceiver, uint8_t *txBuf){
	uint8_t status = 1;
	spi_enable(transceiver->CS_bank, transceiver->CS_pin);
	if((HAL_SPI_Transmit_IT(transceiver->spiHandle, txBuf, sizeof(txBuf))) == HAL_OK){}
	else{
		status = 0;
	}
	spi_disable(transceiver->CS_bank, transceiver->CS_pin);
	return status;
}