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
  inputs.encoder1_value.current_val = 0; // will be set with final digit of default later
  inputs.encoder1_value.get_func = get_encoder1_count;
  inputs.encoder2_value.current_val = 0; // will be set with final digit of default later
  inputs.encoder2_value.get_func = get_encoder2_count;

  // Initializing Output Handler
  stepper_reset_movement(&stepper_movement);

  // Initializing Application States
  application_states.control_mode = STEP_CONTROL;
  application_states.movement_state = MOVEMENT_STATE_IDLE;

  application_states.angle_digit_pointer = 0;
  set_digit_array(application_states.angle_digits, steps_to_angle(&stepper_movement));
  application_states.angle_value = steps_to_angle(&stepper_movement);
  inputs.encoder1_value.current_val = (int16_t)application_states.angle_digits[0];
  encoder1_count_set(inputs.encoder1_value.current_val);

  application_states.speed_digit_pointer = 0;
  set_digit_array(application_states.speed_digits, freq_to_speed(&stepper_movement));
  application_states.speed_value = freq_to_speed(&stepper_movement);
  inputs.encoder2_value.current_val = (int16_t)application_states.speed_digits[0];
  encoder2_count_set(inputs.encoder2_value.current_val);

  application_states.encoder_control_value = 0;

  application_states.deg_step_pointer = 0;
  set_float_digit_array(application_states.deg_step_digits, stepper_movement.angle_to_steps);
  application_states.deg_step_value = stepper_movement.angle_to_steps;
  // Will set initial encoder values upon control mode change

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

        inputs.encoder2_value.current_val = (int16_t)application_states.deg_step_digits[application_states.deg_step_pointer];
        encoder2_count_set(inputs.encoder2_value.current_val);

        stepper_movement.steps = DEFAULT_ENCODER_CONTROL_FREQ;
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
        application_states.angle_digit_pointer++;

        // constraining it to the number of digits available
        if(application_states.angle_digit_pointer >= ANGLE_VALUE_DIGIT_NUM) {
          application_states.angle_digit_pointer = 0;
        }

        // setting the encoder to the value of the next digit
        inputs.encoder1_value.current_val = (int16_t)application_states.angle_digits[application_states.angle_digit_pointer];
        encoder1_count_set(inputs.encoder1_value.current_val);
      }

      // encoder2 button
      if(inputs.encoder2_button.current_val == BUTTON_PRESSED) {
        // Incrementing the freq digit pointer
        application_states.speed_digit_pointer++;

        // constraining it to the number of digits available
        if(application_states.speed_digit_pointer >= SPEED_VALUE_DIGIT_NUM) {
          application_states.speed_digit_pointer = 0;
        }

        // setting the encoder to the value of the next digit
        inputs.encoder2_value.current_val = (int16_t)application_states.speed_digits[application_states.speed_digit_pointer];
        encoder2_count_set(inputs.encoder2_value.current_val);
      }

      // encoder1 value
      if(application_states.angle_digits[application_states.angle_digit_pointer] != (uint8_t)inputs.encoder1_value.current_val) {

        // constraining encoder value to single digit
        if (inputs.encoder1_value.current_val > 9) {
          encoder1_count_reset();
          inputs.encoder1_value.current_val = 0;

        } else if (inputs.encoder1_value.current_val < 0) {
          encoder1_count_set(9);
          inputs.encoder1_value.current_val = 9;
        }

        // updating the digit array
        application_states.angle_digits[application_states.angle_digit_pointer] = (uint8_t)inputs.encoder1_value.current_val;

        // updating the actual value
        application_states.angle_value = set_uin32_digit(application_states.angle_value, application_states.angle_digit_pointer, application_states.angle_digits[application_states.angle_digit_pointer]);

        // updating the stepper_movement
        stepper_set_angle_value(&stepper_movement, application_states.angle_value);
        
        // updating display
        display_update_stepper_angle(application_states.angle_digit_pointer, application_states.angle_value);
      }
      
      // encoder2 value
      if(application_states.speed_digits[application_states.speed_digit_pointer] != (uint8_t)inputs.encoder2_value.current_val) {

        // constraining encoder value to single digit
        if (inputs.encoder2_value.current_val > 9) {
          encoder2_count_reset();
          inputs.encoder2_value.current_val = 0;

        } else if (inputs.encoder2_value.current_val < 0) {
          encoder2_count_set(9);
          inputs.encoder2_value.current_val = 9;
        }

        // updating the digit array
        application_states.speed_digits[application_states.speed_digit_pointer] = (uint8_t)inputs.encoder2_value.current_val;

        // updating the actual value
        application_states.speed_value = set_uin32_digit(application_states.speed_value, application_states.speed_digit_pointer, application_states.speed_digits[application_states.speed_digit_pointer]);

        // constraining the current encoder value to not exceed user frequency range
        if (application_states.speed_value < USER_MIN_FREQ) {
          // setting pointer to first digit and making it 1
          application_states.speed_digit_pointer = 0;
          set_digit_array(application_states.speed_digits, USER_MIN_FREQ);
          application_states.speed_value = USER_MIN_FREQ;
          encoder2_count_set(USER_MIN_FREQ);
          inputs.encoder2_value.current_val = USER_MIN_FREQ;

          // setting frequency to minimum value
          stepper_movement.frequency = STEPPER_MIN_FREQ;

        } else if (application_states.speed_value > USER_MAX_FREQ){
          // setting pointer to last digit and making it 1 as in 100
          application_states.speed_digit_pointer = SPEED_VALUE_DIGIT_NUM-1;
          set_digit_array(application_states.speed_digits, USER_MAX_FREQ);
          application_states.speed_value = USER_MAX_FREQ;
          encoder2_count_set(1); //TODO: it's 1 because 1 in 100, should automate it some how
          inputs.encoder2_value.current_val = 1;

          // setting frequency to max value
          stepper_movement.frequency = STEPPER_MAX_FREQ;

        } else {
          stepper_set_speed(&stepper_movement, application_states.speed_value);
        }

        // updating display
        display_update_stepper_speed(application_states.speed_digit_pointer, application_states.speed_value);
      }
      break;

    case MOVEMENT_STATE_RUN:
      /* printf("Steps Moved: %lu \r", get_step_counter()); */
      display_update_angles_moved(&stepper_movement);

      if(inputs.stop_button.current_val == BUTTON_PRESSED) {
        stepper_stop();

        // resetting step value in case pause changed it
        stepper_set_angle_value(&stepper_movement, application_states.angle_value);

        application_states.movement_state = MOVEMENT_STATE_IDLE;
        display_step_control_reset(&stepper_movement);
        /* printf("\nSTOPPING!\n\n"); */

        break;
      }

      if(!get_stepper_state()) {
        // resetting step value in case pause changed it
        stepper_set_angle_value(&stepper_movement, application_states.angle_value);

        application_states.movement_state = MOVEMENT_STATE_IDLE;
        display_step_control_reset(&stepper_movement);
        /* printf("\n\nFinished Stepper Movement\n"); */

        break;
      }

      if(inputs.run_pause_button.current_val == BUTTON_PRESSED) {
        stepper_stop();

        // setting step value to the remaining steps
        stepper_movement.steps = get_step_counter();

        application_states.movement_state = MOVEMENT_STATE_PAUSE;
        display_update_application_state(application_states.movement_state);
        /* printf("\nStepper Motor Paused\n"); */

        break;
      }

      break;

    case MOVEMENT_STATE_PAUSE:

      if(inputs.stop_button.current_val == BUTTON_PRESSED) {
        stepper_stop();

        // resetting step value in case pause changed it
        stepper_set_angle_value(&stepper_movement, application_states.angle_value);

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

    inputs.encoder1_value.current_val = (int16_t) application_states.angle_digits[application_states.angle_digit_pointer];
    encoder1_count_set(inputs.encoder1_value.current_val);

    inputs.encoder2_value.current_val = (int16_t)application_states.speed_digits[application_states.speed_digit_pointer];
    encoder2_count_set(inputs.encoder2_value.current_val);

    // re-calculate steps in case angle_to_steps value is changed
    stepper_set_angle_value(&stepper_movement, application_states.angle_value);
    stepper_set_speed(&stepper_movement, application_states.speed_value);
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
      stepper_movement.steps = (uint32_t)(-50*application_states.encoder_control_value);

    } else {
      stepper_set_dir(&stepper_movement, STEPPER_ANTICLOCKWISE_DIR);
      stepper_movement.steps = (uint32_t)(50*application_states.encoder_control_value);

    }

    application_states.encoder_control_value = inputs.encoder1_value.current_val;
    display_update_encoder_value(application_states.encoder_control_value);

    stepper_move(&stepper_movement);
    while(get_stepper_state());

  }

  // Encoder2 button
  if(inputs.encoder2_button.current_val == BUTTON_PRESSED) {
    // Incrementing the freq digit pointer
    application_states.deg_step_pointer++;

    // constraining it to the number of digits available
    if(application_states.deg_step_pointer >= DEG_STEP_DIGIT_NUM) {
      application_states.deg_step_pointer = 0;
    }

    // setting the encoder to the value of the next digit
    inputs.encoder2_value.current_val = (int16_t)application_states.deg_step_digits[application_states.deg_step_pointer];
    encoder2_count_set(inputs.encoder2_value.current_val);
  }

  // Encoder2 value
  if(application_states.deg_step_digits[application_states.deg_step_pointer] != (uint8_t)inputs.encoder2_value.current_val) {

    // constraining encoder value to single digit
    if (inputs.encoder2_value.current_val > 9) {
      encoder2_count_reset();
      inputs.encoder2_value.current_val = 0;

    } else if (inputs.encoder2_value.current_val < 0) {
      encoder2_count_set(9);
      inputs.encoder2_value.current_val = 9;
    }


    // updating the digit array
    application_states.deg_step_digits[application_states.deg_step_pointer] = (uint8_t)inputs.encoder2_value.current_val;

    // updating the actual value
    application_states.deg_step_value = set_float_digit(application_states.deg_step_value, application_states.deg_step_pointer, application_states.deg_step_digits[application_states.deg_step_pointer]);

    // Contraining range
    if (application_states.deg_step_value <= 0) {
      // this will cause divide by 0 error when steps_to_angle()
      //TODO:
    }

    // updating stepper movement
    stepper_movement.angle_to_steps = application_states.deg_step_value;

    // updating display
    display_update_angle_to_steps_value(stepper_movement.angle_to_steps);
  }

}
