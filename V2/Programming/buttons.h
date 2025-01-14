#ifndef BUTTONS_H
#define BUTTONS_H

#define BUTTON_COUNT 4
#define RUN_PAUSE_BUTTON_IND 0
#define STOP_BUTTON_IND 1
#define ENCODER1_BUTTON_IND 2
#define ENCODER2_BUTTON_IND 3

typedef enum {
  BUTTON_IDLE,
  BUTTON_PRESSED,
  BUTTON_COOLDOWN
} button_status_t;

typedef struct {
  GpioConfig gpio;
  button_status_t button_status;
  uint32_t reactivation_time;
} button_t;

void buttons_init(void);
void buttons_process(void);
button_status_t get_button_status(uint8_t button_ind);
button_status_t get_run_pause_button_status(void);
button_status_t get_stop_button_status(void);
button_status_t get_encoder1_button_status(void);
button_status_t get_encoder2_button_status(void);

#endif
