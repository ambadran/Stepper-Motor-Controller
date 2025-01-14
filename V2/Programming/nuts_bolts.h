#ifndef NUTS_BOLTS_H
#define NUTS_BOLTS_H

uint8_t get_most_significant_digit(uint32_t value);
uint32_t digit_array_to_uint32(uint8_t* number_digits, uint8_t size);
void set_digit_array_from_uint32(uint8_t* digit_array, uint8_t array_size, uint32_t value);

#endif
