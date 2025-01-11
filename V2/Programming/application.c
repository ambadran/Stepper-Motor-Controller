#include "project-defs.h"

stepper_movement_t stepper_movement = {
  .stepper_enable_status = STEPPER_DISABLE,
  .stepper_direction = STEPPER_CLOCKWISE_DIR,
  .frequency = DEFAULT_STEPPER_FREQUENCY,
  .steps = DEFAULT_STEP_NUM
};

page_t current_page = STEP_CONTROL_PAGE;
const void (*application_process_func[])(void) = {application_step_control_mode,
                                                  application_encoder_control_mode
                                                  };


void application_init(void) {

  display_welcome_page();

  display_step_control_reset(&stepper_movement);

}

void application_process_current_page(void) { application_process_func[current_page](); }

void application_step_control_mode(void) {
  display_update_stepper_step(get_encoder1_count());
  display_update_stepper_frequency(get_encoder2_count());
}

void application_encoder_control_mode (void) {

}
