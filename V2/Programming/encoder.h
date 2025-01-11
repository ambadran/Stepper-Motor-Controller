#ifndef ENCODER_H
#define ENCODER_H

typedef struct {
  volatile uint8_t direction;
  volatile uint8_t ready;
  int16_t count;
  int16_t prev_count;
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
