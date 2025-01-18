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

void display_step_control_reset(stepper_movement_t* stepper_movement) {
  lcdTxtClear(&lcdDevice);
  display_update_stepper_angle(0, steps_to_angle(stepper_movement));
  display_update_stepper_speed(0, freq_to_speed(stepper_movement));
  display_update_stepper_direction(stepper_movement->stepper_direction);
  display_update_stepper_enable_status(stepper_movement->stepper_enable_status);
  display_update_application_state(MOVEMENT_STATE_IDLE);
}

void display_update_stepper_angle(uint8_t digit_selected, uint32_t angle) {
  //TODO: show a cursor or sth on the selected digit
  EA = 0;
  lcdTxtPrintAt(&lcdDevice, 0, 0, "Degrees: %05lu ", angle);
  EA = 1;
}

void display_update_stepper_speed(uint8_t digit_selected, uint8_t speed) {
  //TODO: show a cursor or sth on the selected digit
  EA = 0;
  lcdTxtPrintAt(&lcdDevice, 1, 0, "Speed:  %03d ", speed);
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

void display_update_angles_moved(stepper_movement_t* stepper_movement) {
  if ((get_current_time() - step_report_next_time) >= STEP_REPORT_PERIOD) {
    EA = 0; // IT'S EXTREMEMLY IMPORTANT TO NOT DISTURB THE SIGNAL SENDING PROCESS
            // took me 3 days to understand the problem was the stepper INTERRUPTS
            // caused havoc when communication with the display ;(
    lcdTxtPrintAt(&lcdDevice, 3, 7, " %lu ", round((float)get_step_counter()/stepper_movement->angle_to_steps));
    EA = 1;
    step_report_next_time = get_current_time();
  }
}

void display_encoder_control_reset(stepper_movement_t* stepper_movement) {
  lcdTxtClear(&lcdDevice);
  display_update_encoder_value(0); // always resets to 0
  display_update_angle_to_steps_value(stepper_movement->angle_to_steps);
  display_update_stepper_enable_status(stepper_movement->stepper_enable_status);
}

void display_update_encoder_value(int16_t value) {
  EA = 0;
  lcdTxtPrintAt(&lcdDevice, 0, 0, "Encoder: %d  ", value);
  EA = 1;
}

void display_update_angle_to_steps_value(float value) {
  uint8_t int_part = (uint8_t)value;
  EA = 0;
  lcdTxtPrintAt(&lcdDevice, 1, 0, "Deg-Step: %03d.%02d", int_part, (uint16_t)((value-int_part)*100));
  EA = 1;
}
