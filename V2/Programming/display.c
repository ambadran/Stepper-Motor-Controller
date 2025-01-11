#include "project-defs.h"

const char* STEPPER_ENABLE_STATUS_TO_CHAR[] = {"HOLD", "FREE"};
const char* STEPPER_DIR_STATUS_TO_CHAR[] = {"CW", "CCW"};

static char buffer[20];
static LCDSerialLinkConfig lcdLink = {
  // E (SCLK)
  .sclkOutput = GPIO_PIN_CONFIG(E_SCLK_PORT, E_SCLK_PIN, GPIO_BIDIRECTIONAL_MODE),
	// RW (MOSI)
	.dataInOut = GPIO_PIN_CONFIG(RW_SID_PORT, RW_SID_PIN, GPIO_BIDIRECTIONAL_MODE),
  // RS (CS#)
  .csOutput = GPIO_PIN_CONFIG(RS_CS_PORT, RS_CS_PIN, GPIO_BIDIRECTIONAL_MODE),
};

LCD_DEVICE_INTERFACE_NO_RESET(lcdDevice, &lcdLink)
LCD_DEVICE_GRAPHICS(lcdDevice, 4, 16, 128, 64)

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
  sprintf(buffer, "Steps: %d", stepper_movement->steps);
  lcdTxtPrintAt(&lcdDevice, 0, 0, buffer);
  sprintf(buffer, "freq: %d", stepper_movement->frequency);
  lcdTxtPrintAt(&lcdDevice, 1, 0, buffer);
  sprintf(buffer, "%s         %s", STEPPER_DIR_STATUS_TO_CHAR[stepper_movement->stepper_direction],
                                     STEPPER_ENABLE_STATUS_TO_CHAR[stepper_movement->stepper_enable_status]);
  lcdTxtPrintAt(&lcdDevice, 2, 0, buffer);

}

/* void display_update_stepper_step(uint32_t steps) { */
/* sprintf(buffer, "%lu", stepper_movement->steps) */
void display_update_stepper_step(int16_t steps) {
  sprintf(buffer, "%d", steps);
  lcdTxtPrintAt(&lcdDevice, 0, 7, buffer);
}
/* void display_update_stepper_frequency(uint32_t frequency) { */
/*   sprintf(buffer, "%lu", frequency); */
void display_update_stepper_frequency(int16_t frequency) {
  sprintf(buffer, "%d", frequency);
    lcdTxtPrintAt(&lcdDevice, 1, 6, buffer);
}
void display_update_stepper_enable_status(stepper_enable_status_t stepper_enable_status) {
  lcdTxtPrintAt(&lcdDevice, 2, 0, STEPPER_ENABLE_STATUS_TO_CHAR[stepper_enable_status]);
}
void display_update_stepper_direction(stepper_direction_t stepper_direction) {
  lcdTxtPrintAt(&lcdDevice, 2, 11, STEPPER_DIR_STATUS_TO_CHAR[stepper_direction]);
}


