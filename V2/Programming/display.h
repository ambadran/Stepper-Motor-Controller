#ifndef DISPLAY_H
#define DISPLAY_H

#define STEP_REPORT_PERIOD 200

typedef enum {
  MOVEMENT_STATE_IDLE = 0,
  MOVEMENT_STATE_RUN = 1,
  MOVEMENT_STATE_PAUSE = 2,
  MOVEMENT_STATE_ERROR = 3,
} movement_state_t;

void display_init(void);
void display_welcome_page(void);

void display_step_control_reset(stepper_movement_t* stepper_movement);
void display_update_stepper_angle(uint8_t digit_selected, uint32_t angle);
void display_update_stepper_speed(uint8_t digit_selected, uint8_t speed);
void display_update_stepper_direction(stepper_direction_t stepper_direction);
void display_update_stepper_enable_status(stepper_enable_status_t stepper_enable_status);
void display_update_application_state(movement_state_t movement_state);
void display_update_angles_moved(stepper_movement_t* stepper_movement);

void display_encoder_control_reset(stepper_movement_t* stepper_movement);
void display_update_encoder_value(int16_t value);
void display_update_angle_to_steps_value(float value);

#endif
