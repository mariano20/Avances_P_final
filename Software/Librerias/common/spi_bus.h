#include <stdint.h>

void spi1_enable(uint8_t cs);
void spi1_disable(uint8_t cs);
uint8_t spi1_TxRx(uint8_t addr);