#ifndef NUTS_BOLTS_H
#define NUTS_BOLTS_H

typedef enum {
  VALUE_OK,
  VALUE_OUT_OF_MIN_RANGE,
  VALUE_OUT_OF_MAX_RANGE
} value_state_t;

uint8_t get_most_significant_digit(uint32_t value);
uint32_t digit_array_to_uint32(uint8_t* number_digits, uint8_t size);

/* value_state_t digit_array_user_freq_to_uint32(uint32_t* value, uint8_t* number_digits); */

void set_digit_array_from_uint32(uint8_t* digit_array, uint8_t array_size, uint32_t value);

uint8_t get_most_significant_digit_float(float float_value);

#endif
