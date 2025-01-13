#include "project-defs.h"

/* Mappings */
const stepper_enable_status_t UINT8_TO_STEPPER_EN_STAT[] = {STEPPER_ENABLE, STEPPER_DISABLE};
const stepper_direction_t UINT8_TO_STEPPER_DIR[] = {STEPPER_CLOCKWISE_DIR, STEPPER_ANTICLOCKWISE_DIR};
const control_mode_t UINT8_TO_CONTROL_MODE[] = {STEP_CONTROL, ENCODER_CONTROL};
const void (*application_process_func[])(void) = { application_step_control_mode, application_encoder_control_mode};

/* Inputs */
all_inputs_t inputs;

/* Output */
stepper_movement_t stepper_movement;

/* Application States */
application_states_t application_states;

/* Func Definitions */
void application_process_current_page(void) { application_process_func[application_states.control_mode](); }

void application_init(void) {
  
  // Initializing Input Handler
  inputs.run_pause_button = {BUTTON_IDLE, get_run_pause_button_status};
  inputs.stop_button= {BUTTON_IDLE, get_stop_button_status};
  inputs.encoder1_button = {BUTTON_IDLE, get_encoder1_button_status};
  inputs.encoder1_button = {BUTTON_IDLE, get_encoder2_button_status};
  inputs.hold_free_switch = {SWITCH_OFF, get_hold_free_switch_status};
  inputs.cw_ccw_switch = {SWITCH_OFF, get_cw_ccw_switch_switch_status};
  inputs.control_mode_switch = {SWITCH_OFF, get_control_mode_switch_status};
  inputs.encoder1_value = {0, get_encoder1_count};
  inputs.encoder2_value = {0, get_encoder2_count};

  // Initializing Output Handler
  stepper_motor_reset_movement(&stepper_movement);

  // Initializing Application States
  application_states.control_mode = STEP_CONTROL;
  application_states.movement_state = MOVEMENT_STATE_IDLE;
  application_states.step_value_digit_pointer = 0;
  application_states.freq_value_digit_pointer = 0;
  // TODO: should initiate by a function that converts the default step value to this
  application_states.step_value_digits = {0, 0, 0, 0}; 
  application_states.freq_value_digits = {0, 0, 0, 0}; 

  // Welcome Page
  display_welcome_page();

  // Prepare Display for Default Starting Control Mode
  display_step_control_reset(&stepper_movement);
}

void application_step_control_mode(void) {

  // Updating buttons and encoder values
  inputs.run_pause_button.current_val = inputs.run_pause_button.get_func();
  inputs.stop_button.current_val = inputs.stop_button.get_func();
  inputs.encoder1_button.current_val = inputs.encoder1_button.get_func();
  inputs.encoder2_button.current_val = inputs.encoder2_button.get_func();
  inputs.cw_ccw_switch.current_val = inputs.cw_ccw_switch.get_func();
  inputs.hold_free_switch.current_val = inputs.hold_free_switch.get_func();
  inputs.control_mode_switch.current_val = inputs.control_mode_switch.get_func();
  inputs.encoder1_value.current_val = inputs.encoder1_value.get_func();
  inputs.encoder2_value.current_val = inputs.encoder2_value.get_func();

  switch(application.movement_state) {

    case MOVEMENT_STATE_IDLE:

      /* Processing Inputs */
      // Stepper Direction Switch
      if(inputs.cw_ccw_switch.current_val != stepper_movement.stepper_direction) {
        stepper_set_dir(&stepper_movement, UINT8_TO_STEPPER_DIR[inputs.cw_ccw_switch.current_val]);
        display_update_stepper_direction(stepper_movement.stepper_direction);
      }

      // Stepper enable Status Switch
      if(inputs.hold_free_switch.current_val != stepper_movement.stepper_enable_status) {
        stepper_set_enable(&stepper_movement, UINT8_TO_STEPPER_EN_STAT[inputs.hold_free_switch.current_val]);
        display_update_stepper_enable_status(stepper_movement.stepper_enable_status);
      }

      // Control Mode Switch
      if(inputs.control_mode_switch.current_val != application_states.control_mode) {

      }

      // Run Pause Button
      if(inputs.run_pause_button.current_val == BUTTON_PRESSED) {

      }

      // Stop Button
      // since it's dealt with in ISR, here we just update the application states
      if(inputs.stop_button.current_val == BUTTON_COOLDOWN) {

      }

      // encoder1 button
      if(inputs.encoder1_button.current_val == BUTTON_PRESSED) {
        application_states.step_value_digit_pointer++;
        if(application.step_value_digit_pointer >= STEP_VALUE_DIGIT_NUM) {
          application_states.step_value_digit_pointer = 0;
        }
      }

      // encoder2 button
      if(inputs.encoder1_button.current_val == BUTTON_PRESSED) {
        application_states.freq_value_digit_pointer++;
        if(application.freq_value_digit_pointer >= STEP_VALUE_DIGIT_NUM) {
          application_states.freq_value_digit_pointer = 0;
        }
      }

      // encoder1 value
      if(application_states.step_value_digits[application_states.step_value_digit_pointer] != inputs.encoder1_value.current_val) {
        if (inputs.encoder1_value.current_val > 9) {
          encoder1_count_reset();
          inputs.encoder1_value.current_val = 0;

        } else if (inputs.encoder1_value.current_val < 0) {
          encoder1_count_set(9);
          inputs.encoder1_value.current_val = 9;
        }
        application_states.step_value_digits[application_states.step_value_digit_pointer] = inputs.encoder1_value.current_val;
        display_update_stepper_step(inputs.encoder1_value.current_val, application_states.step_value_digit_pointer);
      }

      
      // encoder2 value
      if(application_states.freq_value_digits[application_states.freq_value_digit_pointer] != inputs.encoder2_value.current_val) {
        if (inputs.encoder2_value.current_val > 9) {
          encoder2_count_reset();
          inputs.encoder2_value.current_val = 0;

        } else if (inputs.encoder2_value.current_val < 0) {
          encoder2_count_set(9);
          inputs.encoder2_value.current_val = 9;
        }
        application_states.freq_value_digits[application_states.freq_value_digit_pointer] = inputs.encoder2_value.current_val;
        display_update_stepper_frequency(inputs.encoder2_value.current_val, application_states.freq_value_digit_pointer);
      }
      break;

    case MOVEMENT_STATE_RUN:
      break;

    case MOVEMENT_STATE_PAUSE:
      break;

    case MOVEMENT_STATE_ERROR:
      break;

  }

}

void application_encoder_control_mode (void) {

}
