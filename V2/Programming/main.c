#include "project-defs.h"

/**** MUST DECLARE INTERRUPTS IN MAIN.C FILE AS PER SDCC REQUIREMENT ****/
INTERRUPT(GLOBAL_TIMER_ISR, GLOBAL_TIMER_INTERRUPT);

void main() {
  INIT_EXTENDED_SFR();

  // Initializations
  global_timer_init();
  encoder_init();
  buttons_init();
  switch_init();
  display_init();

  // Enable Interrupts
  EA = 1;

  // Main Routine
	while (1) {
		lcdTxtClear(&lcdDevice);
		delay1ms(1000);
		lcdTxtPrintAt(&lcdDevice, 0, 0, "Hello,");
		delay1ms(1000);
		lcdTxtPrintAt(&lcdDevice, 1, 8, "World!");
		delay1ms(1000);
	}

}
