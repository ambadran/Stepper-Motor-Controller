#include "project-defs.h"

// Mappings stepper settings to strings to be displayed
const uint8_t* STEPPER_ENABLE_STATUS_TO_CHAR[] = {" HOLD", " FREE"};
const uint8_t* STEPPER_DIR_STATUS_TO_CHAR[] = {"CW ", "CCW"};

static LCDSerialLinkConfig lcdLink = {
  // E (SCLK)
  .sclkOutput = GPIO_PIN_CONFIG(E_SCLK_PORT, E_SCLK_PIN, GPIO_BIDIRECTIONAL_MODE),
	// RW (MOSI)
	.dataInOut = GPIO_PIN_CONFIG(RW_SID_PORT, RW_SID_PIN, GPIO_BIDIRECTIONAL_MODE),
  // RS (CS#)
  .csOutput = GPIO_PIN_CONFIG(RS_CS_PORT, RS_CS_PIN, GPIO_BIDIRECTIONAL_MODE),
};

LCD_DEVICE_INTERFACE_NO_RESET(lcdDevice, &lcdLink)
LCD_DEVICE_TEXT_ONLY(lcdDevice, 4, 16)
/* LCD_DEVICE_GRAPHICS(lcdDevice, 4, 16, 128, 64) */

void display_init(void) {

  // Initializing the display
 	lcdInitialiseDevice(&lcdDevice);
	lcdTxtInitialiseDisplayMode(&lcdDevice);

}

void display_welcome_page(void) {

  lcdTxtClear(&lcdDevice);
  lcdTxtPrintAt(&lcdDevice, 0, 3, "Stepper");
  lcdTxtPrintAt(&lcdDevice, 1, 2, "Controller");
  lcdTxtPrintAt(&lcdDevice, 3, 5, "V2.0");
  delay1ms(1000);

}

/* Need to run once at the beginning of starting control mode
 * Displays all current settings
 */
void display_step_control_reset(stepper_movement_t* stepper_movement) {
  lcdTxtClear(&lcdDevice);
  lcdTxtPrintAt(&lcdDevice, 0, 0, "Step:");
  lcdTxtPrintAt(&lcdDevice, 1, 0, "Freq:");
  display_update_stepper_step(STEP_VALUE_DIGIT_NUM, stepper_movement->steps);
  display_update_stepper_frequency(FREQ_VALUE_DIGIT_NUM, stepper_movement->frequency);
  display_update_stepper_direction(stepper_movement->stepper_direction);
  display_update_stepper_enable_status(stepper_movement->stepper_enable_status);
}

void display_update_stepper_step(uint8_t digit_selected, uint32_t steps) {
  //TODO: show a cursor or sth on the selected digit
  lcdTxtPrintAt(&lcdDevice, 0, 6, "%06lu ", steps);
}

void display_update_stepper_frequency(uint8_t digit_selected, uint32_t frequency) {
  //TODO: show a cursor or sth on the selected digit
  lcdTxtPrintAt(&lcdDevice, 1, 6, "%06lu ", frequency);
}

void display_update_stepper_direction(stepper_direction_t stepper_direction) {
  lcdTxtPrintAt(&lcdDevice, 2, 0, STEPPER_DIR_STATUS_TO_CHAR[stepper_direction]);
}

void display_update_stepper_enable_status(stepper_enable_status_t stepper_enable_status) {
  lcdTxtPrintAt(&lcdDevice, 2, 10, STEPPER_ENABLE_STATUS_TO_CHAR[stepper_enable_status]);
}

void display_test(uint8_t num1, uint8_t* digits) {
  lcdTxtPrintAt(&lcdDevice, 3, 0, "E%d: %d%d%d%d%d%d    ", num1, digits[0], digits[1], digits[2], digits[3], digits[4], digits[5]);
}
