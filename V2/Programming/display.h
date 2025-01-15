#ifndef DISPLAY_H
#define DISPLAY_H

#define STEP_REPORT_PERIOD 300

typedef enum {
  MOVEMENT_STATE_IDLE = 0,
  MOVEMENT_STATE_RUN = 1,
  MOVEMENT_STATE_PAUSE = 2,
  MOVEMENT_STATE_ERROR = 3,
} movement_state_t;

void display_init(void);
void display_welcome_page(void);
void display_step_control_reset(stepper_movement_t* stepper_movement);
void display_update_stepper_step(uint8_t digit_selected, uint32_t steps);
void display_update_stepper_frequency(uint8_t digit_selected, uint32_t frequency);
void display_update_stepper_direction(stepper_direction_t stepper_direction);
void display_update_stepper_enable_status(stepper_enable_status_t stepper_enable_status);
void display_update_application_state(movement_state_t movement_state);
void display_update_steps_moved(uint32_t steps);

#endif
