#ifndef NUTS_BOLTS_H
#define NUTS_BOLTS_H

uint32_t round(float x);
void set_digit_array(uint8_t *digits, uint32_t number);
uint32_t set_uin32_digit(uint32_t number, uint8_t position, uint8_t value);
void set_float_digit_array(uint8_t* digits, float number);
float set_float_digit(float number, uint8_t position, uint8_t value);

#endif
