#include "project-defs.h"

static button_t run_pause_button;
static button_t stop_button;
static button_t encoder1_button;
static button_t encoder2_button;
static button_t* buttons[] = {&run_pause_button, &stop_button, &encoder1_button, &encoder2_button};

void buttons_init(void) {
  /* setting up button GpioConfig variable */
  run_pause_button.gpio.port = RUN_PAUSE_BUTTON_PORT,
  run_pause_button.gpio.pin = RUN_PAUSE_BUTTON_PIN, 
  run_pause_button.gpio.count = 1, 
  run_pause_button.gpio.pinMode = GPIO_HIGH_IMPEDANCE_MODE,	
  run_pause_button.gpio.pinInterrupt = DISABLE_GPIO_PIN_INTERRUPT, 
  run_pause_button.gpio.interruptTrigger = GPIO_RISING_EDGE, 
  run_pause_button.gpio.wakeUpInterrupt = DISABLE_GPIO_PIN_WAKE_UP,
  run_pause_button.gpio.schmidtTrigger = ENABLE_SCHMIDT_TRIGGER,
  run_pause_button.gpio.internalPullUp = ENABLE_INTERNAL_PULL_UP,
  run_pause_button.gpio.speed = GPIO_SPEED_SLOWEST,
  run_pause_button.gpio.digitalInput = ENABLE_GPIO_DIGITAL_INPUT,

  stop_button.gpio.port = STOP_BUTTON_PORT, 
  stop_button.gpio.pin = STOP_BUTTON_PIN, 
  stop_button.gpio.count = 1, 
  stop_button.gpio.pinMode = GPIO_HIGH_IMPEDANCE_MODE,	
  /* stop_button.gpio.pinInterrupt = ENABLE_GPIO_PIN_INTERRUPT, */ 
  stop_button.gpio.pinInterrupt = DISABLE_GPIO_PIN_INTERRUPT, 
  /* stop_button.gpio.interruptTrigger = GPIO_FALLING_EDGE, */ 
  stop_button.gpio.interruptTrigger = GPIO_RISING_EDGE, 
  stop_button.gpio.wakeUpInterrupt = DISABLE_GPIO_PIN_WAKE_UP,
  stop_button.gpio.schmidtTrigger = ENABLE_SCHMIDT_TRIGGER,
  stop_button.gpio.internalPullUp = ENABLE_INTERNAL_PULL_UP,
  stop_button.gpio.speed = GPIO_SPEED_SLOWEST,
  stop_button.gpio.digitalInput = ENABLE_GPIO_DIGITAL_INPUT,

  encoder1_button.gpio.port = ENCODER1_BUTTON_PORT, 
  encoder1_button.gpio.pin = ENCODER1_BUTTON_PIN, 
  encoder1_button.gpio.count = 1, 
  encoder1_button.gpio.pinMode = GPIO_HIGH_IMPEDANCE_MODE,	
  encoder1_button.gpio.pinInterrupt = DISABLE_GPIO_PIN_INTERRUPT, 
  encoder1_button.gpio.interruptTrigger = GPIO_RISING_EDGE, 
  encoder1_button.gpio.wakeUpInterrupt = DISABLE_GPIO_PIN_WAKE_UP,
  encoder1_button.gpio.schmidtTrigger = ENABLE_SCHMIDT_TRIGGER,
  encoder1_button.gpio.internalPullUp = ENABLE_INTERNAL_PULL_UP,
  encoder1_button.gpio.speed = GPIO_SPEED_SLOWEST,
  encoder1_button.gpio.digitalInput = ENABLE_GPIO_DIGITAL_INPUT,

  encoder2_button.gpio.port = ENCODER2_BUTTON_PORT, 
  encoder2_button.gpio.pin = ENCODER2_BUTTON_PIN, 
  encoder2_button.gpio.count = 1, 
  encoder2_button.gpio.pinMode = GPIO_HIGH_IMPEDANCE_MODE,	
  encoder2_button.gpio.pinInterrupt = DISABLE_GPIO_PIN_INTERRUPT, 
  encoder2_button.gpio.interruptTrigger = GPIO_RISING_EDGE, 
  encoder2_button.gpio.wakeUpInterrupt = DISABLE_GPIO_PIN_WAKE_UP,
  encoder2_button.gpio.schmidtTrigger = ENABLE_SCHMIDT_TRIGGER,
  encoder2_button.gpio.internalPullUp = ENABLE_INTERNAL_PULL_UP,
  encoder2_button.gpio.speed = GPIO_SPEED_SLOWEST,
  encoder2_button.gpio.digitalInput = ENABLE_GPIO_DIGITAL_INPUT,

  /* initiating the GPIOs */
  gpioConfigure(&run_pause_button.gpio);
  gpioConfigure(&stop_button.gpio);
  gpioConfigure(&encoder1_button.gpio);
  gpioConfigure(&encoder2_button.gpio);

  run_pause_button.button_status = BUTTON_IDLE;
  stop_button.button_status = BUTTON_IDLE;
  encoder1_button.button_status = BUTTON_IDLE;
  encoder2_button.button_status = BUTTON_IDLE;

  run_pause_button.reactivation_time = 0;
  stop_button.reactivation_time = 0;
  encoder1_button.reactivation_time = 0;
  encoder2_button.reactivation_time = 0;
  
}

// This function should be constantly running in Main Routine
// It looks for any button change. 
// if found will stop reading that button for BUTTON_COOLDOWN_PERIOD
void buttons_process(void) {

  for (uint8_t i=0;i<BUTTON_COUNT;i++) {

    if(buttons[i]->button_status == BUTTON_IDLE) {

      if(!gpioRead(&buttons[i]->gpio)) {
        delay1ms(1); // waiting a bit and reading again just to be absolutely sure it's not noise
        if(!gpioRead(&buttons[i]->gpio)) {
          buttons[i]->reactivation_time = get_current_time() + BUTTON_COOLDOWN_PERIOD;
          buttons[i]->button_status = BUTTON_PRESSED;
        }
      }

    } else {
      if(get_current_time() >= buttons[i]->reactivation_time) {
        buttons[i]->button_status = BUTTON_IDLE;
      }
    }

  }
}

// return current button index
// if it's BUTTON_PRESSED, it will return that and make it BUTTON_COOLDOWN
// this is make sure a button press is not processed more than once
button_status_t get_button_status(uint8_t button_ind) {
  if (buttons[button_ind]->button_status == BUTTON_PRESSED) {
    buttons[button_ind]->button_status = BUTTON_COOLDOWN;
    return BUTTON_PRESSED;
  }
  return buttons[button_ind]->button_status;
}

button_status_t get_run_pause_button_status(void) { return get_button_status(RUN_PAUSE_BUTTON_IND); }
button_status_t get_stop_button_status(void) { return get_button_status(STOP_BUTTON_IND); }
button_status_t get_encoder1_button_status(void) { return get_button_status(ENCODER1_BUTTON_IND); }
button_status_t get_encoder2_button_status(void) { return get_button_status(ENCODER2_BUTTON_IND); }

/* INTERRUPT(STOP_BUTTON_PIN_ISR, STOP_BUTTON_PIN_INTERRUPT) { */

  /* if(get_button_status(STOP_BUTTON_IND)) { */

    // Stop Stepper Motor and stop holding
    /* stepper_stop(); */
    // updating stepper steps in case it was changed by pausing
    /* stepper_set_steps(&stepper_movement, digit_array_to_uint32(application_states.step_value_digits, STEP_VALUE_DIGIT_NUM)); */

    // reset everything
  /* } */
/* } */
