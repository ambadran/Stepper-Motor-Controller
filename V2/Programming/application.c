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

void application_reset(void) {
  
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
  stepper_reset_movement(&stepper_movement);

  // Initializing Application States
  application_states.control_mode = STEP_CONTROL;
  application_states.movement_state = MOVEMENT_STATE_IDLE;

  application_states.step_value_digit_pointer = STEP_VALUE_DIGIT_NUM-1;
  set_digit_array_from_uint32(application_states.step_value_digits, STEP_VALUE_DIGIT_NUM, stepper_movement.steps);

  application_states.freq_value_digit_pointer = FREQ_VALUE_DIGIT_NUM-1;
  set_digit_array_from_uint32(application_states.freq_value_digits, STEP_VALUE_DIGIT_NUM, stepper_movement.frequency);

  application_states.encoder_control_value = 0;
  application_states.prev_step_control_freq_value = stepper_movement.frequency;

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

      // Control Mode Switch
      if(inputs.control_mode_switch.current_val != application_states.control_mode) {
        application_states.control_mode = ENCODER_CONTROL;
        application_states.encoder_control_value = 0; // always resets

        inputs.encoder1_value.current_val = 0;
        encoder1_count_set(0);

        inputs.encoder2_value.current_val = get_most_significant_digit_float(stepper_movement.angle_to_steps);
        encoder2_count_set(get_most_significant_digit_float(stepper_movement.angle_to_steps));

        application_states.prev_step_control_freq_value = stepper_movement.frequency;
        stepper_set_freq(&stepper_movement, DEFAULT_ENCODER_CONTROL_FREQ);
        display_encoder_control_reset(&stepper_movement);
        return;
      }

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

      // Run Pause Button
      if(inputs.run_pause_button.current_val == BUTTON_PRESSED) {
        application_states.movement_state = MOVEMENT_STATE_RUN;
        display_update_application_state(application_states.movement_state);

        stepper_move(&stepper_movement);
        break;
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

        stepper_set_freq(&stepper_movement, digit_array_to_uint32(application_states.freq_value_digits, FREQ_VALUE_DIGIT_NUM));

        // constraining the current encoder value to not exceed user frequency range
        /* uint32_t test_val; */
        /* value_state_t value_state = digit_array_user_freq_to_uint32(&test_val, application_states.freq_value_digits); */
        /* if (value_state == VALUE_OUT_OF_MIN_RANGE) { */
        /*   //TODO: I don't know if this will cover all cases */
        /*   encoder2_count_set(1); */
        /*   inputs.encoder2_value.current_val = 1; */
        

        /* } else if (value_state == VALUE_OUT_OF_MAX_RANGE){ */
        /*   //TODO: I don't know if this will cover all cases */
        /*   encoder2_count_set(1); //TODO: I don't know if this will cover all cases */
        /*   inputs.encoder2_value.current_val = 1; */

        /* } */

        // updating display with step values
        display_update_stepper_frequency(application_states.freq_value_digit_pointer, stepper_movement.frequency);
      }
      break;

    case MOVEMENT_STATE_RUN:
      /* printf("Steps Moved: %lu \r", get_step_counter()); */
      display_update_steps_moved(get_step_counter());

      if(inputs.stop_button.current_val == BUTTON_PRESSED) {
        stepper_stop();
        stepper_set_steps(&stepper_movement, digit_array_to_uint32(application_states.step_value_digits, STEP_VALUE_DIGIT_NUM));

        application_states.movement_state = MOVEMENT_STATE_IDLE;
        display_step_control_reset(&stepper_movement);
        /* printf("\nSTOPPING!\n\n"); */

        break;
      }

      if(!get_stepper_state()) {
        stepper_set_steps(&stepper_movement, digit_array_to_uint32(application_states.step_value_digits, STEP_VALUE_DIGIT_NUM));

        application_states.movement_state = MOVEMENT_STATE_IDLE;
        display_step_control_reset(&stepper_movement);
        /* printf("\n\nFinished Stepper Movement\n"); */

        break;
      }

      if(inputs.run_pause_button.current_val == BUTTON_PRESSED) {
        stepper_stop();
        stepper_set_steps(&stepper_movement, get_step_counter());

        application_states.movement_state = MOVEMENT_STATE_PAUSE;
        display_update_application_state(application_states.movement_state);
        /* printf("\nStepper Motor Paused\n"); */

        break;
      }

      break;

    case MOVEMENT_STATE_PAUSE:

      if(inputs.stop_button.current_val == BUTTON_PRESSED) {
        stepper_stop();
        stepper_set_steps(&stepper_movement, digit_array_to_uint32(application_states.step_value_digits, STEP_VALUE_DIGIT_NUM));

        application_states.movement_state = MOVEMENT_STATE_IDLE;
        display_step_control_reset(&stepper_movement);
        /* printf("\nSTOPPING!\n\n"); */
        break;
      }

      if(inputs.run_pause_button.current_val == BUTTON_PRESSED) {
        application_states.movement_state = MOVEMENT_STATE_RUN;
        display_update_application_state(application_states.movement_state);

        stepper_move(&stepper_movement);
        /* printf("\nResuming..\n\n"); */

        break;
      }

      break;

    case MOVEMENT_STATE_ERROR:

      display_update_application_state(application_states.movement_state);

      break;

  }
}

void application_encoder_control_mode (void) {
  /* Updating buttons and encoder values */
  inputs.run_pause_button.current_val = inputs.run_pause_button.get_func();
  inputs.stop_button.current_val = inputs.stop_button.get_func();
  inputs.encoder1_button.current_val = inputs.encoder1_button.get_func();
  inputs.encoder2_button.current_val = inputs.encoder2_button.get_func();
  inputs.cw_ccw_switch.current_val = inputs.cw_ccw_switch.get_func();
  inputs.hold_free_switch.current_val = inputs.hold_free_switch.get_func();
  inputs.control_mode_switch.current_val = inputs.control_mode_switch.get_func();
  inputs.encoder1_value.current_val = inputs.encoder1_value.get_func();
  inputs.encoder2_value.current_val = inputs.encoder2_value.get_func();


  /* Processing Inputs */
  // Control Mode Switch
  if(inputs.control_mode_switch.current_val != application_states.control_mode) {
    application_states.control_mode = STEP_CONTROL;

    inputs.encoder1_value.current_val = get_most_significant_digit(stepper_movement.steps);
    encoder1_count_set(get_most_significant_digit(stepper_movement.steps));

    inputs.encoder2_value.current_val = get_most_significant_digit(stepper_movement.frequency);
    encoder2_count_set(get_most_significant_digit(stepper_movement.frequency));

    stepper_set_freq(&stepper_movement, application_states.prev_step_control_freq_value);
    display_step_control_reset(&stepper_movement);
    return;
  }

  // Stepper enable Status Switch
  if(inputs.hold_free_switch.current_val != stepper_movement.stepper_enable_status) {
    stepper_set_enable(&stepper_movement, UINT8_TO_STEPPER_EN_STAT[inputs.hold_free_switch.current_val]);
    display_update_stepper_enable_status(stepper_movement.stepper_enable_status);
  }

  // Encoder1 value
  if(application_states.encoder_control_value != inputs.encoder1_value.current_val) {

    // deciding Direction
    application_states.encoder_control_value -= inputs.encoder1_value.current_val;
    if(application_states.encoder_control_value < 0) {
      stepper_set_dir(&stepper_movement, STEPPER_CLOCKWISE_DIR);
      stepper_set_steps(&stepper_movement, (uint32_t)(-50*application_states.encoder_control_value));

    } else {
      stepper_set_dir(&stepper_movement, STEPPER_ANTICLOCKWISE_DIR);
      stepper_set_steps(&stepper_movement, (uint32_t)(50*application_states.encoder_control_value));

    }

    application_states.encoder_control_value = inputs.encoder1_value.current_val;
    display_update_encoder_value(application_states.encoder_control_value);

    stepper_move(&stepper_movement);
    while(get_stepper_state());

  }

}
