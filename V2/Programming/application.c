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
  inputs.run_pause_button.current_val = BUTTON_IDLE;
  inputs.run_pause_button.get_func = get_run_pause_button_status;
  inputs.stop_button.current_val = BUTTON_IDLE;
  inputs.stop_button.get_func = get_stop_button_status;
  inputs.encoder1_button.current_val = BUTTON_IDLE;
  inputs.encoder1_button.get_func = get_encoder1_button_status;
  inputs.encoder2_button.current_val = BUTTON_IDLE;
  inputs.encoder2_button.get_func = get_encoder2_button_status;
  inputs.hold_free_switch.current_val = SWITCH_OFF;
  inputs.hold_free_switch.get_func = get_hold_free_switch_status;
  inputs.cw_ccw_switch.current_val = SWITCH_OFF;
  inputs.cw_ccw_switch.get_func = get_cw_ccw_switch_switch_status;
  inputs.control_mode_switch.current_val = SWITCH_OFF;
  inputs.control_mode_switch.get_func = get_control_mode_switch_status;
  // first digit of default step value
  inputs.encoder1_value.current_val = get_most_significant_digit(DEFAULT_STEP_NUM);
  inputs.encoder1_value.get_func = get_encoder1_count;
  // first digit of default frequency value
  inputs.encoder2_value.current_val = get_most_significant_digit(DEFAULT_STEPPER_FREQUENCY);
  inputs.encoder2_value.get_func = get_encoder2_count;

  // Initializing Output Handler
  stepper_motor_reset_movement(&stepper_movement);

  // Initializing Application States
  application_states.control_mode = STEP_CONTROL;
  application_states.movement_state = MOVEMENT_STATE_IDLE;
  set_digit_array_from_uint32(application_states.step_value_digits, STEP_VALUE_DIGIT_NUM, stepper_movement.steps);
  set_digit_array_from_uint32(application_states.freq_value_digits, STEP_VALUE_DIGIT_NUM, stepper_movement.frequency);
  application_states.step_value_digit_pointer = STEP_VALUE_DIGIT_NUM-1;
  application_states.freq_value_digit_pointer = FREQ_VALUE_DIGIT_NUM-1;

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

  switch(application_states.movement_state) {

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
        // Incrementing the step digit pointer
        application_states.step_value_digit_pointer--;

        // constraining it to the number of digits available
        if(application_states.step_value_digit_pointer < 0) {
          application_states.step_value_digit_pointer = STEP_VALUE_DIGIT_NUM-1;
        }

        // setting the encoder to the value of the next digit
        encoder1_count_set((int16_t)application_states.step_value_digits[application_states.step_value_digit_pointer]);

        //TODO: show what character it's pointing at
        
        /* display_test(application_states.step_value_digit_pointer, application_states.step_value_digits); */
        /* printf("step: %lu\n", stepper_movement.steps); */
      }

      // encoder2 button
      if(inputs.encoder2_button.current_val == BUTTON_PRESSED) {
        // Incrementing the freq digit pointer
        application_states.freq_value_digit_pointer--;

        // constraining it to the number of digits available
        if(application_states.freq_value_digit_pointer < 0) {
          application_states.freq_value_digit_pointer = FREQ_VALUE_DIGIT_NUM-1;
        }

        // setting the encoder to the value of the next digit
        encoder2_count_set((int16_t)application_states.freq_value_digits[application_states.freq_value_digit_pointer]);

        //TODO: show what character it's pointing at
        
        /* display_test(application_states.freq_value_digit_pointer, application_states.freq_value_digits); */
        /* printf("freq: %lu\n", stepper_movement.frequency); */
      }

      // encoder1 value
      if(application_states.step_value_digits[application_states.step_value_digit_pointer] != (uint8_t)inputs.encoder1_value.current_val) {

        // constraining encoder value to single digit
        if (inputs.encoder1_value.current_val > 9) {
          encoder1_count_reset();
          inputs.encoder1_value.current_val = 0;

        } else if (inputs.encoder1_value.current_val < 0) {
          encoder1_count_set(9);
          inputs.encoder1_value.current_val = 9;
        }

        // updating the digit array
        application_states.step_value_digits[application_states.step_value_digit_pointer] = (uint8_t)inputs.encoder1_value.current_val;

        // updating the stepper_movement
        stepper_set_steps(&stepper_movement, digit_array_to_uint32(application_states.step_value_digits, STEP_VALUE_DIGIT_NUM));
        
        // updating display with step values
        display_update_stepper_step(application_states.step_value_digit_pointer, stepper_movement.steps);
      }
      
      // encoder2 value
      if(application_states.freq_value_digits[application_states.freq_value_digit_pointer] != (uint8_t)inputs.encoder2_value.current_val) {

        // constraining encoder value to single digit
        if (inputs.encoder2_value.current_val > 9) {
          encoder2_count_reset();
          inputs.encoder2_value.current_val = 0;

        } else if (inputs.encoder2_value.current_val < 0) {
          encoder2_count_set(9);
          inputs.encoder2_value.current_val = 9;
        }

        // updating the digit array
        application_states.freq_value_digits[application_states.freq_value_digit_pointer] = (uint8_t)inputs.encoder2_value.current_val;

        // updating the stepper_movement
        stepper_set_freq(&stepper_movement, digit_array_to_uint32(application_states.freq_value_digits, FREQ_VALUE_DIGIT_NUM));

        // updating display with step values
        display_update_stepper_frequency(application_states.freq_value_digit_pointer, stepper_movement.frequency);
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
