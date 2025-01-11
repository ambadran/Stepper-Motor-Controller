#ifndef DISPLAY_H
#define DISPLAY_H

void display_init(void);
void display_welcome_page(void);
void display_step_control_reset(stepper_movement_t* stepper_movement);
void display_update_stepper_step(int16_t steps);
void display_update_stepper_frequency(int16_t frequency);
void display_update_stepper_enable_status(stepper_enable_status_t stepper_enable_status);
void display_update_stepper_direction(stepper_direction_t stepper_direction);

#endif
