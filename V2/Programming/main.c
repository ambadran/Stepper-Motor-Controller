#include "project-defs.h"

/**** MUST DECLARE INTERRUPTS IN MAIN.C FILE AS PER SDCC REQUIREMENT ****/
INTERRUPT(GLOBAL_TIMER_ISR, GLOBAL_TIMER_INTERRUPT);
INTERRUPT(STEPPER_TIMER_ISR, STEPPER_TIMER_INTERRUPT);

void main() {
  INIT_EXTENDED_SFR();

  // Initializations
  global_timer_init();
  stepper_motor_init();
  encoders_init();
  buttons_init();
  switch_init();
  display_init();

  // Enable Interrupts
  EA = 1;

  // Starting Application
  application_init();

  // Main Routine
	while (1) {
    encoders_process();  // getting latest encoder readings
    buttons_process();  // getting latest button readings

    application_process_current_page();
	}

}
