#include "project-defs.h"

// to get divisors FAST
const uint32_t divisors[] = {1, 10, 100, 1000, 10000, 100000, 1000000};

uint32_t round(float x) {
    // Extract the integer part of the number
    int int_part = (int)x;

    // Determine if the fractional part is >= 0.5 or <= -0.5
    if (x - int_part >= 0.5f) {
        return int_part + 1;  // Round up for positive numbers
 
    } else if (x - int_part <= -0.5f) {
        return int_part - 1;  // Round down for negative numbers
 
    } else {
        return int_part;         // No rounding needed

    }
}

/* This function assumes number < array size of digits
 * it assumes number is always positive
 */
void set_digit_array(uint8_t *digits, uint32_t number) {

  memset(digits, 0, sizeof(digits)/sizeof(uint8_t));

  uint8_t digit_pointer = 0;

  while (number > 0) {
    digits[digit_pointer++] = number % 10;  // Extract least significant digit
    number /= 10;
  }

}

uint32_t set_uin32_digit(uint32_t number, uint8_t position, uint8_t value) {

    // Extract the current digit at the position
    uint8_t current_digit = (number / divisors[position]) % 10;

    // Calculate the new number
    return number + (value - current_digit) * divisors[position];
}

/* This function assumes digits {a, b, c, d, e} in the form <edc.ba> (0-4) inclusive
 * where a is hundredth, b is tenth, c is ones, d is hundreds, e is thousands
 * it assumes float number is always within range of digits and is always +ve
 */
void set_float_digit_array(uint8_t* digits, float number) {

  memset(digits, 0, sizeof(digits)/sizeof(uint8_t));

  uint16_t whole = (uint16_t)number;
  uint8_t decimal = (uint8_t)((number-whole) * 100.0f);

  digits[0] = decimal % 10; // hundredth
  digits[1] = (decimal/10) % 10; // tenth
  digits[2] = whole % 10; // ones
  digits[3] = (whole/10) % 10; // tens
  digits[4] = (whole/100) % 10; // hundreds
}

/* This function assumes position is 0-4 inclusive. as defined in the prev function
 * it assumes value is one digit (0-9)
 *
 */
float set_float_digit(float number, uint8_t position, uint8_t value) {

  uint16_t whole = (uint16_t)number;
  uint8_t decimal = (uint8_t)((number-whole) * 100.0f);

  // Modify the part the needs changing
  switch (position) {
    case 0:  // Hundredths place
        decimal = (decimal / 10) * 10 + value;
        break;
    case 1:  // Tenths place
        decimal = (decimal % 10) + (value * 10);
        break;
    case 2:  // Ones place
        whole = (whole / 10) * 10 + value;
        break;
    case 3:  // Tens place
        whole = (whole % 10) + (value * 10) + (whole / 100) * 100;
        break;
    case 4:  // Hundreds place
        whole = (whole % 100) + (value * 100);
        break;
    default:
        // position ARGUMENT WAS OUT OF RANGE!!!!!!
        printf("position ARGUMENT WAS OUT OF RANGE!!!!!!\n");
        return number;  // Return the original number if position is invalid
  }

  // Combine the whole part and decimal part back into a float
  return (float)(whole + (decimal / 100.0f));
}

