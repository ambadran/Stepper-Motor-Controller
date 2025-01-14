#include "project-defs.h"

static int8_t BIT_TO_INCREMENT[][2] = {{-1, 1},
                                        {1, -1}};

static encoder_t encoder1;
static encoder_t encoder2;

void encoders_init(void) {

  // Initializing Encoder struct variables
  memset(&encoder1, 0, sizeof(encoder1));
  memset(&encoder2, 0, sizeof(encoder2));

  /* setting up button GpioConfig variable */
  encoder1.dt_pin.port = ENCODER1_DT_PORT;
  encoder1.dt_pin.pin = ENCODER1_DT_PIN;
  encoder1.dt_pin.count = 1;
  encoder1.dt_pin.pinMode = GPIO_HIGH_IMPEDANCE_MODE;
  encoder1.dt_pin.pinInterrupt = DISABLE_GPIO_PIN_INTERRUPT;
  encoder1.dt_pin.interruptTrigger = GPIO_RISING_EDGE;
  encoder1.dt_pin.wakeUpInterrupt = DISABLE_GPIO_PIN_WAKE_UP;
  encoder1.dt_pin.schmidtTrigger = ENABLE_SCHMIDT_TRIGGER;
  encoder1.dt_pin.internalPullUp = DISABLE_INTERNAL_PULL_UP;
  encoder1.dt_pin.speed = GPIO_SPEED_SLOWEST;
  encoder1.dt_pin.digitalInput = ENABLE_GPIO_DIGITAL_INPUT;

  encoder1.clk_pin.port = ENCODER1_CLK_PORT;
  encoder1.clk_pin.pin = ENCODER1_CLK_PIN;
  encoder1.clk_pin.count = 1;
  encoder1.clk_pin.pinMode = GPIO_HIGH_IMPEDANCE_MODE;
  encoder1.clk_pin.pinInterrupt = DISABLE_GPIO_PIN_INTERRUPT;
  encoder1.clk_pin.interruptTrigger = GPIO_RISING_EDGE;
  encoder1.clk_pin.wakeUpInterrupt = DISABLE_GPIO_PIN_WAKE_UP;
  encoder1.clk_pin.schmidtTrigger = ENABLE_SCHMIDT_TRIGGER;
  encoder1.clk_pin.internalPullUp = DISABLE_INTERNAL_PULL_UP;
  encoder1.clk_pin.speed = GPIO_SPEED_SLOWEST;
  encoder1.clk_pin.digitalInput = ENABLE_GPIO_DIGITAL_INPUT;

  encoder2.dt_pin.port = ENCODER2_DT_PORT;
  encoder2.dt_pin.pin = ENCODER2_DT_PIN;
  encoder2.dt_pin.count = 1; 
  encoder2.dt_pin.pinMode = GPIO_HIGH_IMPEDANCE_MODE;	
  encoder2.dt_pin.pinInterrupt = DISABLE_GPIO_PIN_INTERRUPT; 
  encoder2.dt_pin.interruptTrigger = GPIO_RISING_EDGE; 
  encoder2.dt_pin.wakeUpInterrupt = DISABLE_GPIO_PIN_WAKE_UP;
  encoder2.dt_pin.schmidtTrigger = ENABLE_SCHMIDT_TRIGGER;
  encoder2.dt_pin.internalPullUp = DISABLE_INTERNAL_PULL_UP;
  encoder2.dt_pin.speed = GPIO_SPEED_SLOWEST;
  encoder2.dt_pin.digitalInput = ENABLE_GPIO_DIGITAL_INPUT;

  encoder2.clk_pin.port = ENCODER2_CLK_PORT;
  encoder2.clk_pin.pin = ENCODER2_CLK_PIN;
  encoder2.clk_pin.count = 1; 
  encoder2.clk_pin.pinMode = GPIO_HIGH_IMPEDANCE_MODE;	
  encoder2.clk_pin.pinInterrupt = DISABLE_GPIO_PIN_INTERRUPT; 
  encoder2.clk_pin.interruptTrigger = GPIO_RISING_EDGE; 
  encoder2.clk_pin.wakeUpInterrupt = DISABLE_GPIO_PIN_WAKE_UP;
  encoder2.clk_pin.schmidtTrigger = ENABLE_SCHMIDT_TRIGGER;
  encoder2.clk_pin.internalPullUp = DISABLE_INTERNAL_PULL_UP;
  encoder2.clk_pin.speed = GPIO_SPEED_SLOWEST;
  encoder2.clk_pin.digitalInput = ENABLE_GPIO_DIGITAL_INPUT;

  gpioConfigure(&encoder1.dt_pin);
  gpioConfigure(&encoder1.clk_pin);
  gpioConfigure(&encoder2.dt_pin);
  gpioConfigure(&encoder2.clk_pin);
}

void encoders_process(void) {
  if((encoder1.encoder_status == ENCODER_IDLE)){
    if ((encoder1.prev_clk != gpioRead(&encoder1.clk_pin))) {
      encoder1.prev_clk = gpioRead(&encoder1.clk_pin);
      encoder1.reactivation_time = get_current_time() + ENCODER_COOLDOWN_PERIOD;
      encoder1.encoder_status = ENCODER_TRIGGERED;
    }

  } else if (get_current_time() >= encoder1.reactivation_time){

    encoder1.prev_count = encoder1.count;
    encoder1.count += BIT_TO_INCREMENT[encoder1.prev_clk][gpioRead(&encoder1.dt_pin)];
    encoder1.encoder_status = ENCODER_IDLE;

  }

  if((encoder2.encoder_status == ENCODER_IDLE)){
    if ((encoder2.prev_clk != gpioRead(&encoder2.clk_pin))) {
      encoder2.prev_clk = gpioRead(&encoder2.clk_pin);
      encoder2.reactivation_time = get_current_time() + ENCODER_COOLDOWN_PERIOD;
      encoder2.encoder_status = ENCODER_TRIGGERED;
    }

  } else if (get_current_time() >= encoder2.reactivation_time){

    encoder2.prev_count = encoder2.count;
    encoder2.count += BIT_TO_INCREMENT[encoder2.prev_clk][gpioRead(&encoder2.dt_pin)];
    encoder2.encoder_status = ENCODER_IDLE;

  }

}

int16_t get_encoder1_count(void) { return encoder1.count; }
int8_t get_encoder1_dir(void) {  return (encoder1.count - encoder1.prev_count); }
void encoder1_count_reset(void) { encoder1.count = 0; }
void encoder1_count_set(int16_t value) { encoder1.count = value; }

int16_t get_encoder2_count(void) { return encoder2.count; }
int8_t get_encoder2_dir(void) {  return (encoder2.count - encoder2.prev_count); }
void encoder2_count_reset(void) { encoder2.count = 0; }
void encoder2_count_set(int16_t value) { encoder2.count = value; }

