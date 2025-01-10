#include "project-defs.h"

static LCDSerialLinkConfig lcdLink = {
	// RS (CS#) = P1.6
	.csOutput = GPIO_PIN_CONFIG(GPIO_PORT1, GPIO_PIN6, GPIO_BIDIRECTIONAL_MODE),
	// E (SCLK) = P1.5
	.sclkOutput = GPIO_PIN_CONFIG(GPIO_PORT1, GPIO_PIN5, GPIO_BIDIRECTIONAL_MODE),
	// RW (MOSI) = P1.3
	.dataInOut = GPIO_PIN_CONFIG(GPIO_PORT1, GPIO_PIN3, GPIO_BIDIRECTIONAL_MODE),
};

// RST# = P1.1
LCD_DEVICE_INTERFACE_WITH_RESET(lcdDevice, &lcdLink, GPIO_PORT1, GPIO_PIN1)

LCD_DEVICE_GRAPHICS(lcdDevice, 4, 16, 128, 64)


void main() {
  INIT_EXTENDED_SFR();


 	lcdInitialiseDevice(&lcdDevice);
	lcdTxtInitialiseDisplayMode(&lcdDevice);
	 
  // Enable Interrupts
  EA = 1;
	while (1) {
		lcdTxtClear(&lcdDevice);
		delay1ms(1000);
		lcdTxtPrintAt(&lcdDevice, 0, 0, "Hello,");
		delay1ms(1000);
		lcdTxtPrintAt(&lcdDevice, 1, 8, "World!");
		delay1ms(1000);
	}

}
