/* 
Creates a n-bit (size) mask filled with 1 except for a specified
ammount of zeros determined by *lenght*, positioned at a 
certain *offset* from the LSB.
*/
uint32_t bit_mask(uint8_t size, uint8_t length, uint8_t offset);