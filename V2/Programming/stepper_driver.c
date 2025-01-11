#include "project-defs.h"

static GpioConfig stepper_enable_pin = GPIO_PIN_CONFIG(STEPPER_PORT, STEPPER_ENABLE_PIN, GPIO_PUSH_PULL_MODE);
static volatile GpioConfig stepper_step_pin = GPIO_PIN_CONFIG(STEPPER_PORT, STEPPER_STEP_PIN, GPIO_PUSH_PULL_MODE);
static GpioConfig stepper_dir_pin = GPIO_PIN_CONFIG(STEPPER_PORT, STEPPER_DIR_PIN, GPIO_PUSH_PULL_MODE);
static GpioConfig stepper_diag_pin = GPIO_PIN_CONFIG(STEPPER_PORT, STEPPER_DIAG_PIN, GPIO_HIGH_IMPEDANCE_MODE);
static GpioConfig stepper_index_pin = GPIO_PIN_CONFIG(STEPPER_PORT, STEPPER_INDEX_PIN, GPIO_HIGH_IMPEDANCE_MODE);

static volatile uint32_t step_counter = 0;
static volatile __bit stepper_active = 0;
static volatile uint32_t frequency = DEFAULT_STEPPER_FREQUENCY;
static stepper_enable_status_t stepper_enable_after_move;

void stepper_motor_init(void) {

  // GPIOs init
  gpioConfigure(&stepper_enable_pin);
  gpioWrite(&stepper_enable_pin, STEPPER_DISABLE);
  gpioConfigure(&stepper_step_pin);
  gpioConfigure(&stepper_dir_pin);
  gpioConfigure(&stepper_index_pin);
  gpioConfigure(&stepper_diag_pin);

}

void stepper_motor_set_freq(uint32_t frequency_input) { frequency = frequency_input; }

void stepper_motor_move(stepper_movement_t* stepper_movement) {

  stepper_enable_after_move = stepper_movement->stepper_enable_status;
  gpioWrite(&stepper_dir_pin, stepper_movement->stepper_direction);
  frequency = stepper_movement->frequency;
  step_counter = stepper_movement->steps;

  stepper_active = 1;
  gpioWrite(&stepper_enable_pin, STEPPER_ENABLE);

  // Timer init
	startTimer(
		STEPPER_TIMER, 
		frequencyToSysclkDivisor(frequency),
		DISABLE_OUTPUT, 
		ENABLE_INTERRUPT, 
		FREE_RUNNING
	);

}

__bit get_stepper_state(void) { return stepper_active; }

void stepper_stop_motor(void) { 
  stopTimer(STEPPER_TIMER); 
  stepper_active = 0;
}

void stepper_set_enable(stepper_enable_status_t stepper_enable_status) {
  if(!stepper_active) {
    gpioWrite(&stepper_enable_pin, stepper_enable_status);
  }
}

void stepper_set_dir(stepper_direction_t stepper_direction) { 
  gpioWrite(&stepper_dir_pin, stepper_direction);
}

void stepper_set_steps_from_float_digits(stepper_movement_t* stepper_movement, uint8_t* float_digits) {
    if (!stepper_movement || !float_digits) {
        return; // Handle null pointers safely
    }

    // Extract digits
    uint8_t hundreds = float_digits[0];
    uint8_t tens = float_digits[1];
    uint8_t ones = float_digits[2];
    uint8_t tenths = float_digits[3];
    uint8_t hundredths = float_digits[4];

    // Convert to total revolutions as a float-like value
    uint32_t whole_part = (hundreds * 100) + (tens * 10) + ones; // Whole revolutions
    uint32_t fractional_part = (tenths * 10) + hundredths;       // Fractional part in hundredths

    // Scale fractional part to steps (fractional_part / 100.0) * 3200
    // Avoid floating point by direct computation:
    uint32_t fractional_steps = (fractional_part * 3200) / 100;

    // Calculate total steps
    stepper_movement->steps = (whole_part * 3200) + fractional_steps;

}

INTERRUPT(STEPPER_TIMER_ISR, STEPPER_TIMER_INTERRUPT) {

  if (step_counter) {

    step_counter--;
    gpioToggle(&stepper_step_pin);

  } else if (stepper_active) {

    gpioWrite(&stepper_enable_pin, stepper_enable_after_move);
    stepper_stop_motor();

  }

}
