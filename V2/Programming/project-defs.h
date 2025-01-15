#ifndef PROJECT_DEFS
#define PROJECT_DEFS

/* Console settings */
#define CONSOLE_SPEED 115200
#define CONSOLE_UART UART1
#define CONSOLE_PIN_CONFIG 0

/* gpio-hal Settings */
// ***Right Side Pins Mappings*** //
#define E_SCLK_PORT GPIO_PORT2
#define E_SCLK_PIN GPIO_PIN5
#define RW_SID_PORT GPIO_PORT2
#define RW_SID_PIN GPIO_PIN4
#define RS_CS_PORT GPIO_PORT2
#define RS_CS_PIN GPIO_PIN3
#define ENCODER2_BUTTON_PORT GPIO_PORT2
#define ENCODER2_BUTTON_PIN GPIO_PIN2
#define ENCODER2_DT_PORT GPIO_PORT2
#define ENCODER2_DT_PIN GPIO_PIN1
#define ENCODER2_CLK_PORT GPIO_PORT2
#define ENCODER2_CLK_PIN GPIO_PIN0
#define CW_CCW_SWITCH_PORT GPIO_PORT3
#define CW_CCW_SWITCH_PIN GPIO_PIN7
#define STOP_BUTTON_PORT GPIO_PORT3
#define STOP_BUTTON_PIN GPIO_PIN6
#define HOLD_FREE_SWITCH_PORT GPIO_PORT3
#define HOLD_FREE_SWITCH_PIN GPIO_PIN5
#define CONTROL_MODE_SWITCH_PORT GPIO_PORT3
#define CONTROL_MODE_SWITCH_PIN GPIO_PIN4
#define RUN_PAUSE_BUTTON_PORT GPIO_PORT3
#define RUN_PAUSE_BUTTON_PIN GPIO_PIN3
#define ENCODER1_BUTTON_PORT GPIO_PORT3
#define ENCODER1_BUTTON_PIN GPIO_PIN2
// P3.1/TX -> Programming/Debugging
// P3.0/RX -> Programming/Debugging

// ***Left Side Pins Mappings*** //
#define ENCODER1_CLK_PORT GPIO_PORT1
#define ENCODER1_CLK_PIN GPIO_PIN0
#define STEPPER_PORT GPIO_PORT1
#define STEPPER_DIR_PIN GPIO_PIN1
#define STEPPER_STEP_PIN GPIO_PIN4
#define STEPPER_ENABLE_PIN GPIO_PIN5
#define STEPPER_DIAG_PIN GPIO_PIN6
#define STEPPER_INDEX_PIN GPIO_PIN7
#define ENCODER1_DT_PORT GPIO_PORT5
#define ENCODER1_DT_PIN GPIO_PIN4

// external pin INTERRUPTS
/* #define STOP_BUTTON_PIN_ISR extint2_isr */
/* #define STOP_BUTTON_PIN_INTERRUPT EXTINT2_INTERRUPT */

/* advpwm-hal Settings */
#define HAL_PWM_API_QUADRATURE_ENCODER
// For PWM_COUNTER_A, we use PWM1P and PWM2P on P1.0 and P5.4 (pin switch = 0).
#define ENCODER1_COUNTER PWM_COUNTER_A
#define ENCODER1_PWM_PIN_SWITCH  0
#define ENCODER1_CHANNEL PWM_Channel0
// For PWM_COUNTER_B, we use PWM5 and PWM6 on P2.0 and P2.1 (pin switch = 0).
#define ENCODER2_COUNTER PWM_COUNTER_B
#define ENCODER2_PWM_PIN_SWITCH  0
#define ENCODER2_CHANNEL PWM_Channel4

/* timer-hal configs */
#define HAL_TIMER_API_STOP_TIMER
#define STEPPER_TIMER TIMER0
#define STEPPER_TIMER_ISR timer0_isr
#define STEPPER_TIMER_INTERRUPT TIMER0_INTERRUPT
// timer 3 acts super weird. where it's fast at specific values and slow at others?!?!
#define GLOBAL_TIMER TIMER3
#define GLOBAL_TIMER_ISR timer3_isr
#define GLOBAL_TIMER_INTERRUPT TIMER3_INTERRUPT

/* Button HAL Defaults */
#define BUTTON_COOLDOWN_PERIOD 300 // time in ms to stop reading button if pressed
#define ENCODER_COOLDOWN_PERIOD 4 // time in ms to stop reading encoder if pressed

/* Stepper Motor HAL Defaults */
#define DEFAULT_STEPPER_FREQUENCY 200
#define STEPPER_CM_TO_STEPS 3200 //TODO: needs testing
#define DEFAULT_STEP_NUM 3200 // one revolution

/* includes */
#include <STC/8H8KxxU/SKDIP28.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <delay.h>
#include <gpio-hal.h>
#include <lcd/links/lcd-link-serial.h>
#include <lcd/lcd-device.h>
#include <lcd/lcd-text.h>
#include <uart-hal.h>
#include <serial-console.h>
#include <timer-hal.h>
#include "global_timer.h"
#include "nuts_bolts.h"
#include "stepper_driver.h"
#include "encoder.h"
#include "buttons.h"
#include "switch.h"
#include "display.h"
#include "application.h"

#endif
