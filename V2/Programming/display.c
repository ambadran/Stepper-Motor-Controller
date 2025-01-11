#include "project-defs.h"

static LCDSerialLinkConfig lcdLink = {
  // E (SCLK)
  .sclkOutput = GPIO_PIN_CONFIG(GPIO_PORT1, GPIO_PIN3, GPIO_BIDIRECTIONAL_MODE),
	// RW (MOSI)
	.dataInOut = GPIO_PIN_CONFIG(GPIO_PORT1, GPIO_PIN7, GPIO_BIDIRECTIONAL_MODE),
  // RS (CS#)
  .csOutput = GPIO_PIN_CONFIG(GPIO_PORT1, GPIO_PIN6, GPIO_BIDIRECTIONAL_MODE),
};

void display_init(void) {

  // Initializing the display
  LCD_DEVICE_INTERFACE_NO_RESET(lcdDevice, &lcdLink)
  LCD_DEVICE_GRAPHICS(lcdDevice, 4, 16, 128, 64)
 	lcdInitialiseDevice(&lcdDevice);
	lcdTxtInitialiseDisplayMode(&lcdDevice);
	

}
