#include "project-defs.h"

static int8_t BIT_TO_INCREMENT[] = {-1, 1};

static encoder_t encoder1;
static encoder_t encoder2;

/* **IMPORTANT:** You MUST define both pwmOnCounterInterrupt() and
 * pwmOnChannelInterrupt(), even if you don't use them. */
#pragma save
// Suppress warning "unreferenced function argument"
#pragma disable_warning 85
void pwmOnCounterInterrupt(PWM_Counter counter, PWM_CounterInterrupt HAL_PWM_SEGMENT event) {}
void pwmOnChannelInterrupt(PWM_Channel channel, uint16_t HAL_PWM_SEGMENT counterValue) {
  if (channel == ENCODER1_CHANNEL) {
		encoder1.direction = counterValue;
		encoder1.ready = 1;
  } else if (channel == ENCODER2_CHANNEL){
		encoder2.direction = counterValue;
		encoder2.ready = 1;
  }

}
#pragma restore

void encoders_init(void) {

  // Initializing Encoder struct variables
  memset(&encoder1, 0, sizeof(encoder1));
  memset(&encoder2, 0, sizeof(encoder2));

  // Initializing First Encoder
  pwmInitialiseQuadratureEncoder(
		ENCODER1_COUNTER,
		ENCODER1_PWM_PIN_SWITCH,
		PWM_CAPTURE_ON_RISING_EDGE,
		PWM_FILTER_4_CLOCKS
	);

  // Initializing Second Encoder
  pwmInitialiseQuadratureEncoder(
		ENCODER2_COUNTER,
		ENCODER2_PWM_PIN_SWITCH,
		PWM_CAPTURE_ON_RISING_EDGE,
		PWM_FILTER_4_CLOCKS
	);

}

void encoders_process(void) {
  if (encoder1.ready) {
    encoder1.prev_count = encoder1.count;
    encoder1.count += BIT_TO_INCREMENT[encoder1.direction];
    encoder1.ready = 0;
  }

  if (encoder2.ready) {
    encoder2.prev_count = encoder2.count;
    encoder2.count += BIT_TO_INCREMENT[encoder2.direction];
    encoder2.ready = 0;

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

