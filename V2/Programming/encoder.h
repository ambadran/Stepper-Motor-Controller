#ifndef ENCODER_H
#define ENCODER_H

typedef enum {
  ENCODER_IDLE = 0,
  ENCODER_TRIGGERED,
  ENCODER_COOLDOWN
} encoder_status_t;

typedef struct {
  encoder_status_t encoder_status;
  int16_t prev_count;
  int16_t count;
  uint32_t reactivation_time;
  GpioConfig dt_pin;
  GpioConfig clk_pin;
  uint8_t prev_clk;
} encoder_t;

void encoders_init(void);
void encoders_process(void);

int16_t get_encoder1_count(void);
int8_t get_encoder1_dir(void);
void encoder1_count_reset(void);
void encoder1_count_set(int16_t value);

int16_t get_encoder2_count(void);
int8_t get_encoder2_dir(void);
void encoder2_count_reset(void);
void encoder2_count_set(int16_t value);


#endif
