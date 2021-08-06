#include "stm32f7xx_hal.h"

typedef enum{
    MAX1193_MODE_SHUTDOWN,
    MAX1193_MODE_STANDBY,
    MAX1193_MODE_IDLE,
    MAX1193_MODE_NORMAL
}max1193_mode;

/* Use GPIO HAL to drive chip select pin low. */
void spi_enable(GPIO_TypeDef *CS_bank, uint16_t CS_pin);
/* Use GPIO HAL to drive chip select pin high. */
void spi_disable(GPIO_TypeDef *CS_bank, uint16_t CS_pin);

/* 
Creates a n-bit (size) mask filled with 1 except for a specified
ammount of zeros determined by *lenght*, positioned at a 
certain *offset* from the LSB.
*/
uint32_t bit_mask(uint8_t size, uint8_t length, uint8_t offset);

/* Control RF mixer switch. */
void bypass_rf_mixer(uint8_t bypass);

/* Set external ADC operating mode. */
void max1193_set_mode(max1193_mode mode);

/* Set GPIOs to a known initial state. */
void gpio_init();

/* Set mixer and transceiver PLLs for a given frequency. */
void tune_freq(uint32_t desired_freq);

/* Activate external ADC and read samples continuosly. */
void start_read();

/* Stops reading samples and set ADC to Standby Mode. */
void stop_read();

/* Packs I/Q samples in IQIQIQIQ format. */
void pack_iq_samples();

/* 
Performs a quick test. Tunes to a local known FM radio and
sends I/Q data to host.
*/
void quick_test();