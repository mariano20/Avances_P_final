#include <stdint.h>

void spi_enable(GPIO_TypeDef *CS_bank, uint16_t CS_pin);
void spi_disable(GPIO_TypeDef *CS_bank, uint16_t CS_pin);
uint8_t spi_rffc5072_read(rffc5072_st *mixer, uint8_t *txBuf, uint8_t *rxBuf);
uint8_t spi_rffc5072_write(rffc5072_st *mixer, uint8_t *txBuf);
void spi_max2837_read(max2837_st *transceiver);
void spi_max2837_write(max2837_st *transceiver, uint8_t *txBuf);