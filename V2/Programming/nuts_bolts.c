#include "project-defs.h"

uint8_t get_most_significant_digit(uint32_t value) {
  while (value >= 10) {
    value /= 10;
  }
  return (uint8_t)value; // Cast to uint8_t as the result is guaranteed to be a single digit
}

uint32_t digit_array_to_uint32(uint8_t* number_digits, uint8_t size) {
  uint32_t result = 0;
  for (uint8_t i = 0; i < size; ++i) {
    result = result*10 + number_digits[i];
  }
  return result;
}

void set_digit_array_from_uint32(uint8_t* digit_array, uint8_t array_size, uint32_t value) {
    // Initialize the array to 0 (for leading zeros)
    memset(digit_array, 0, array_size);

    // Find where to start placing digits
    uint8_t index = array_size;
    while (value > 0 && index > 0) {
        index--;                       // Move backward in the array
        digit_array[index] = value % 10; // Extract the least significant digit
        value /= 10;                   // Remove the least significant digit
    }

    // Remaining digits (if any) are already set to 0 due to memset.
}
