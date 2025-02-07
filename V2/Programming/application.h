#ifndef APPLICATION_H
#define APPLICATION_H

typedef struct {
  button_status_t current_val;
  button_status_t (*get_func)();
} button_input_t;

typedef struct {
  switch_status_t current_val;
  switch_status_t (*get_func)();
} switch_input_t;

typedef struct {
  int16_t current_val;
  int16_t (*get_func)();
} encoder_input_t;

//TODO: could implement a void* input_t and store all inputs in array
// then make another array holding the correct function sequence to 
// cast the void* to their respective values when needed.
// this will allow to access using loops instead of call every input
typedef struct {
  button_input_t run_pause_button;
  button_input_t stop_button;
  button_input_t encoder1_button;
  button_input_t encoder2_button;
  switch_input_t hold_free_switch;
  switch_input_t cw_ccw_switch;
  switch_input_t control_mode_switch;
  encoder_input_t encoder1_value;
  encoder_input_t encoder2_value;
} all_inputs_t;

typedef enum {
  STEP_CONTROL= 0,
  ENCODER_CONTROL,
} control_mode_t;

typedef struct {
  control_mode_t control_mode;
  movement_state_t movement_state;

  int8_t angle_digit_pointer;  // to decide what digit are we editing 
  uint8_t angle_digits[ANGLE_VALUE_DIGIT_NUM]; // so that polling digits is MUCH FASTER!
  uint32_t angle_value; // the actual value

  int8_t speed_digit_pointer;  // to decide what digit are we editing 
  uint8_t speed_digits[SPEED_VALUE_DIGIT_NUM];  // so that polling digits is MUCH FASTER!
  uint8_t speed_value;  // the actual value

  int16_t encoder_control_value;

  int8_t deg_step_pointer;
  uint8_t deg_step_digits[DEG_STEP_DIGIT_NUM];
  float deg_step_value;
} application_states_t;

void application_reset(void);
void application_process_current_page(void);
void application_step_control_mode(void);
void application_encoder_control_mode (void);

#endif
