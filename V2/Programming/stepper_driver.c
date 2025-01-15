#include "project-defs.h"

static GpioConfig stepper_enable_pin = GPIO_PIN_CONFIG(STEPPER_PORT, STEPPER_ENABLE_PIN, GPIO_PUSH_PULL_MODE);
static volatile GpioConfig stepper_step_pin = GPIO_PIN_CONFIG(STEPPER_PORT, STEPPER_STEP_PIN, GPIO_PUSH_PULL_MODE);
static GpioConfig stepper_dir_pin = GPIO_PIN_CONFIG(STEPPER_PORT, STEPPER_DIR_PIN, GPIO_PUSH_PULL_MODE);
static GpioConfig stepper_diag_pin = GPIO_PIN_CONFIG(STEPPER_PORT, STEPPER_DIAG_PIN, GPIO_HIGH_IMPEDANCE_MODE);
static GpioConfig stepper_index_pin = GPIO_PIN_CONFIG(STEPPER_PORT, STEPPER_INDEX_PIN, GPIO_HIGH_IMPEDANCE_MODE);

static volatile uint32_t step_counter = 0;
static volatile __bit stepper_active = 0;
static stepper_enable_status_t stepper_enable_after_move;

void stepper_init(void) {
  // GPIOs init
  gpioConfigure(&stepper_enable_pin);
  gpioWrite(&stepper_enable_pin, STEPPER_DISABLE);
  gpioConfigure(&stepper_step_pin);
  gpioConfigure(&stepper_dir_pin);
  gpioConfigure(&stepper_index_pin);
  gpioConfigure(&stepper_diag_pin);

}

void stepper_reset_movement(stepper_movement_t* stepper_movement) {
  stepper_movement->stepper_enable_status = STEPPER_DISABLE;
  stepper_movement->stepper_direction = STEPPER_CLOCKWISE_DIR;
  stepper_movement->frequency = DEFAULT_STEPPER_FREQUENCY;
  stepper_movement->steps = DEFAULT_STEP_NUM;
}

void stepper_move(stepper_movement_t* stepper_movement) {
  stepper_enable_after_move = stepper_movement->stepper_enable_status;
  gpioWrite(&stepper_dir_pin, stepper_movement->stepper_direction);
  step_counter = stepper_movement->steps;

  stepper_active = 1;
  gpioWrite(&stepper_enable_pin, STEPPER_ENABLE);

  // Timer init
  TimerStatus timer_status = startTimer(
                STEPPER_TIMER, 
                frequencyToSysclkDivisor(stepper_movement->frequency),
                DISABLE_OUTPUT, 
                ENABLE_INTERRUPT, 
                FREE_RUNNING
              );

  if (timer_status == TIMER_FREQUENCY_TOO_HIGH) {
    printf("timer frequency too HIGH!!\n");
    stepper_stop();
  } else if (timer_status == TIMER_FREQUENCY_TOO_LOW) {
    printf("timer frequency too LOW!!\n");
    stepper_stop();
  }
}

void stepper_stop(void) {

  gpioWrite(&stepper_enable_pin, stepper_enable_after_move);
  stopTimer(STEPPER_TIMER);
  stepper_active = 0;
}

void stepper_set_steps(stepper_movement_t* stepper_movement, uint32_t steps) {
  stepper_movement->steps = steps;
}

void stepper_set_freq(stepper_movement_t* stepper_movement, uint32_t frequency) { 
  stepper_movement->frequency = frequency; 
}

void stepper_set_enable(stepper_movement_t* stepper_movement, stepper_enable_status_t stepper_enable_status) {
  if(!stepper_active) {
    stepper_movement->stepper_enable_status = stepper_enable_status;
    gpioWrite(&stepper_enable_pin, stepper_enable_status);
  }
}

void stepper_set_dir(stepper_movement_t* stepper_movement, stepper_direction_t stepper_direction) { 
  stepper_movement->stepper_direction = stepper_direction;
  gpioWrite(&stepper_dir_pin, stepper_direction);
}

uint32_t get_step_counter(void) { return step_counter; }

__bit get_stepper_state(void) { return stepper_active; }


INTERRUPT(STEPPER_TIMER_ISR, STEPPER_TIMER_INTERRUPT) {

  if (step_counter) {

    step_counter--;
    gpioToggle(&stepper_step_pin);

  } else if (stepper_active) {

    stepper_stop();

  }

}

void stepper_test(void) {
  stepper_movement_t stepper_movement;
  stepper_set_steps(&stepper_movement, 1000);

  for (uint16_t i = 500 ; i<20000 ; i = i+100) {

    stepper_set_freq(&stepper_movement, (uint32_t)i);
    stepper_move(&stepper_movement);
    printf("Moving at Freq: %d\n", i);
    while(get_stepper_state());

  }

}
