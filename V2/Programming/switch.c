#include "project-defs.h"

static GpioConfig hold_free_switch = {.port = HOLD_FREE_SWITCH_PORT, 
                                     .pin = HOLD_FREE_SWITCH_PIN, 
                                     .count = 1, 
                                     .pinMode = GPIO_HIGH_IMPEDANCE_MODE,	
                                     .pinInterrupt = DISABLE_GPIO_PIN_INTERRUPT, 
                                     .interruptTrigger = GPIO_RISING_EDGE, 
                                     .wakeUpInterrupt = DISABLE_GPIO_PIN_WAKE_UP,
                                     .schmidtTrigger = ENABLE_SCHMIDT_TRIGGER,
                                     .internalPullUp = ENABLE_INTERNAL_PULL_UP,
                                     .speed = GPIO_SPEED_SLOWEST,
                                     .digitalInput = ENABLE_GPIO_DIGITAL_INPUT,
                                     };

static GpioConfig cw_ccw_switch = {.port = CW_CCW_SWITCH_PORT, 
                                   .pin = CW_CCW_SWITCH_PIN, 
                                   .count = 1, 
                                   .pinMode = GPIO_HIGH_IMPEDANCE_MODE,	
                                   .pinInterrupt = DISABLE_GPIO_PIN_INTERRUPT, 
                                   .interruptTrigger = GPIO_RISING_EDGE, 
                                   .wakeUpInterrupt = DISABLE_GPIO_PIN_WAKE_UP,
                                   .schmidtTrigger = ENABLE_SCHMIDT_TRIGGER,
                                   .internalPullUp = ENABLE_INTERNAL_PULL_UP,
                                   .speed = GPIO_SPEED_SLOWEST,
                                   .digitalInput = ENABLE_GPIO_DIGITAL_INPUT,
                                   };

static GpioConfig control_mode_switch = {.port = CONTROL_MODE_SWITCH_PORT, 
                                         .pin = CONTROL_MODE_SWITCH_PIN, 
                                         .count = 1, 
                                         .pinMode = GPIO_HIGH_IMPEDANCE_MODE,	
                                         .pinInterrupt = DISABLE_GPIO_PIN_INTERRUPT, 
                                         .interruptTrigger = GPIO_RISING_EDGE, 
                                         .wakeUpInterrupt = DISABLE_GPIO_PIN_WAKE_UP,
                                         .schmidtTrigger = ENABLE_SCHMIDT_TRIGGER,
                                         .internalPullUp = ENABLE_INTERNAL_PULL_UP,
                                         .speed = GPIO_SPEED_SLOWEST,
                                         .digitalInput = ENABLE_GPIO_DIGITAL_INPUT,
                                         };




void switch_init(void) {
  gpioConfigure(&hold_free_switch);
  gpioConfigure(&cw_ccw_switch);
  gpioConfigure(&control_mode_switch);
}

const switch_status_t UINT8_TO_SWITCH_STATUS[] = {SWITCH_OFF, SWITCH_ON};
switch_status_t get_hold_free_switch_status(void) { return UINT8_TO_SWITCH_STATUS[gpioRead(&hold_free_switch)]; }
switch_status_t get_cw_ccw_switch_switch_status(void) { return UINT8_TO_SWITCH_STATUS[gpioRead(&cw_ccw_switch)]; }
switch_status_t get_control_mode_switch_status(void) { return UINT8_TO_SWITCH_STATUS[gpioRead(&control_mode_switch)]; }

