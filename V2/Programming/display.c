#include "project-defs.h"

// Mappings stepper settings to strings to be displayed
const uint8_t* STEPPER_ENABLE_STATUS_TO_CHAR[5] = {" HOLD", " FREE"};
const uint8_t* STEPPER_DIR_STATUS_TO_CHAR[3] = {"CW ", "CCW"};
const uint8_t* MOVEMENT_STATE_TO_CHAR[] = {"      IDLE      ",
                                           "Run:            ",
                                           "Pause:  ",
                                           "    Error!    "
                                          };

static uint32_t step_report_next_time = 0;

static LCDSerialLinkConfig lcdLink = {
  // E (SCLK)
  .sclkOutput = GPIO_PIN_CONFIG(E_SCLK_PORT, E_SCLK_PIN, GPIO_BIDIRECTIONAL_MODE),
	// RW (MOSI)
	.dataInOut = GPIO_PIN_CONFIG(RW_SID_PORT, RW_SID_PIN, GPIO_BIDIRECTIONAL_MODE),
  // RS (CS#)
  .csOutput = GPIO_PIN_CONFIG(RS_CS_PORT, RS_CS_PIN, GPIO_BIDIRECTIONAL_MODE),
};

LCD_DEVICE_INTERFACE_WITH_RESET(lcdDevice, &lcdLink, GPIO_PORT2, GPIO_PIN6)
LCD_DEVICE_TEXT_ONLY(lcdDevice, 4, 16)
/* LCD_DEVICE_GRAPHICS(lcdDevice, 4, 16, 128, 64) */

void display_init(void) {

  // Initializing the display
 	lcdInitialiseDevice(&lcdDevice);
	lcdTxtInitialiseDisplayMode(&lcdDevice);

}

void display_welcome_page(void) {

  lcdTxtClear(&lcdDevice);
  lcdTxtPrintAt(&lcdDevice, 0, 0, "    Stepper");
  lcdTxtPrintAt(&lcdDevice, 1, 0, "   Controller");
  lcdTxtPrintAt(&lcdDevice, 2, 0, "      V2.0 ");
  delay1ms(1500);

}


/* void display_step_control(movement_state_t movement_state, stepper_movement_t* stepper_movement) { */

/*   if ((get_current_time() - step_report_next_time) >= STEP_REPORT_PERIOD) { */

/*     lcdInitialiseDevice(&lcdDevice); */
/*     lcdTxtInitialiseDisplayMode(&lcdDevice); */

/*     lcdTxtClear(&lcdDevice); */

/*     lcdTxtPrintAt(&lcdDevice, 0, 0, "Steps: %06lu ", stepper_movement->steps); */
/*     delay1ms(10); */
/*     lcdTxtPrintAt(&lcdDevice, 1, 0, "Freq: %06lu ", stepper_movement->frequency); */
/*     delay1ms(10); */
/*     lcdTxtPrintAt(&lcdDevice, 2, 0, STEPPER_DIR_STATUS_TO_CHAR[stepper_movement->stepper_direction]); */
/*     delay1ms(10); */
/*     lcdTxtPrintAt(&lcdDevice, 2, 10, STEPPER_ENABLE_STATUS_TO_CHAR[stepper_movement->stepper_enable_status]); */
/*     delay1ms(10); */
/*     lcdTxtPrintAt(&lcdDevice, 3, 0, MOVEMENT_STATE_TO_CHAR[movement_state]); */ 
/*     delay1ms(10); */

/*     step_report_next_time = get_current_time(); */
/*   } */

/* } */

void display_step_control_reset(stepper_movement_t* stepper_movement) {
  lcdTxtClear(&lcdDevice);
  display_update_stepper_step(STEP_VALUE_DIGIT_NUM, stepper_movement->steps);
  display_update_stepper_frequency(FREQ_VALUE_DIGIT_NUM, stepper_movement->frequency);
  display_update_stepper_direction(stepper_movement->stepper_direction);
  display_update_stepper_enable_status(stepper_movement->stepper_enable_status);
  display_update_application_state(MOVEMENT_STATE_IDLE);
}

void display_update_stepper_step(uint8_t digit_selected, uint32_t steps) {
  //TODO: show a cursor or sth on the selected digit
  EA = 0;
  lcdTxtPrintAt(&lcdDevice, 0, 0, "Steps: %06lu ", steps);
  EA = 1;
}

void display_update_stepper_frequency(uint8_t digit_selected, uint32_t frequency) {
  //TODO: show a cursor or sth on the selected digit
  EA = 0;
  lcdTxtPrintAt(&lcdDevice, 1, 0, "Freq: %06lu ", frequency);
  EA = 1;
}

void display_update_stepper_direction(stepper_direction_t stepper_direction) {
  EA = 0;
  lcdTxtPrintAt(&lcdDevice, 2, 0, STEPPER_DIR_STATUS_TO_CHAR[stepper_direction]);
  EA = 1;
}

void display_update_stepper_enable_status(stepper_enable_status_t stepper_enable_status) {
  EA = 0;
  lcdTxtPrintAt(&lcdDevice, 2, 10, STEPPER_ENABLE_STATUS_TO_CHAR[stepper_enable_status]);
  EA = 1;
}

void display_update_application_state(movement_state_t movement_state) {
  EA = 0;
  lcdTxtPrintAt(&lcdDevice, 3, 0, MOVEMENT_STATE_TO_CHAR[movement_state]); 
  EA = 1;
}

void display_update_steps_moved(uint32_t steps) {
  if ((get_current_time() - step_report_next_time) >= STEP_REPORT_PERIOD) {
    EA = 0;
    lcdTxtPrintAt(&lcdDevice, 3, 6, "%06lu ", steps);
    EA = 1;
    step_report_next_time = get_current_time();
  }
}

