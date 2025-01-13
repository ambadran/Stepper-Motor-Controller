#include "project-defs.h"

stepper_movement_t stepper_movement;

page_t current_page = STEP_CONTROL_PAGE;
const void (*application_process_func[])(void) = {application_step_control_mode,
                                                  application_encoder_control_mode
                                                  };

void application_process_current_page(void) { application_process_func[current_page](); }

void application_init(void) {
  display_welcome_page();

  stepper_motor_reset_movement(&stepper_movement);
  display_step_control_reset(&stepper_movement);
}

void application_step_control_mode(void) {
  display_update_stepper_step(get_encoder1_count());
  display_update_stepper_frequency(get_encoder2_count());
  display_update_stepper_enable_status(get_hold_free_switch_status());
  display_update_stepper_direction(get_cw_ccw_switch_switch_status());

}

void application_encoder_control_mode (void) {

}
