#include "project-defs.h"

/**** MUST DECLARE INTERRUPTS IN MAIN.C FILE AS PER SDCC REQUIREMENT ****/
INTERRUPT(GLOBAL_TIMER_ISR, GLOBAL_TIMER_INTERRUPT);
/* INTERRUPT(STOP_BUTTON_PIN_ISR, STOP_BUTTON_PIN_INTERRUPT); */
INTERRUPT(STEPPER_TIMER_ISR, STEPPER_TIMER_INTERRUPT);

void main() {
  INIT_EXTENDED_SFR();

  // Initializations
  serialConsoleInitialise(
      CONSOLE_UART, 
      CONSOLE_SPEED, 
      CONSOLE_PIN_CONFIG
      );
  global_timer_init();
  stepper_init();
  encoders_init();
  buttons_init();
  switch_init();
  display_init();

  // Enable Interrupts
  EA = 1;

  // Starting Application
  delay1ms(500);
  application_reset();

	while (1) {
    encoders_process();  // getting latest encoder readings
    buttons_process();  // getting latest button readings

    // Process Application
    application_process_current_page();
	}

}
// Main Routine
