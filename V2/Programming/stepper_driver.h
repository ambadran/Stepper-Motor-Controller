#ifndef STEPPER_MOTOR_H
#define STEPPER_MOTOR_H

typedef enum {
  STEPPER_ENABLE = 0,
  STEPPER_DISABLE,
} stepper_enable_status_t;

typedef enum {
  STEPPER_CLOCKWISE_DIR = 0,
  STEPPER_ANTICLOCKWISE_DIR
} stepper_direction_t;

typedef struct {
  stepper_enable_status_t stepper_enable_status;  // refers to the value of the EN when not in motion.
  stepper_direction_t stepper_direction;
  uint32_t frequency;
  uint32_t steps;
} stepper_movement_t;

void stepper_init(void);
void stepper_reset_movement(stepper_movement_t* stepper_movement);
void stepper_move(stepper_movement_t* stepper_movement);
void stepper_stop(void);
void stepper_set_steps(stepper_movement_t* stepper_movement, uint32_t steps);
void stepper_set_freq(stepper_movement_t* stepper_movement, uint32_t frequency);
void stepper_set_enable(stepper_movement_t* stepper_movement, stepper_enable_status_t stepper_enable_status);
void stepper_set_dir(stepper_movement_t* stepper_movement, stepper_direction_t stepper_direction);
uint32_t get_step_counter(void);
__bit get_stepper_state(void);

#endif
