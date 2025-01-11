#ifndef PROJECT_DEFS
#define PROJECT_DEFS

/* Console settings */
#define CONSOLE_SPEED 115200
#define CONSOLE_UART UART1
#define CONSOLE_PIN_CONFIG 0

/* gpio-hal Settings */
// P1.0/PWM1P -> Encoder1 CLK Pin
// P5.4/PWM2P -> Encoder1 DT Pin
// P1.4/PWM3P -> Encoder2 CLK Pin
// P1.6/PWM4P -> ENcoder2 DT Pin
#define CW_CCW_SWITCH_PORT GPIO_PORT3
#define CW_CCW_SWITCH_PIN GPIO_PIN7
#define CONTROL_MODE_SWITCH_PORT GPIO_PORT3
#define CONTROL_MODE_SWITCH_PIN GPIO_PIN6
#define HOLD_FREE_SWITCH_PORT GPIO_PORT3
#define HOLD_FREE_SWITCH_PIN GPIO_PIN5
#define ENCODER1_BUTTON_PORT GPIO_PORT1
#define ENCODER1_BUTTON_PIN GPIO_PIN5
#define ENCODER2_BUTTON_PORT GPIO_PORT1
#define ENCODER2_BUTTON_PIN GPIO_PIN7
#define RUN_PAUSE_BUTTON_PORT GPIO_PORT2
#define RUN_PAUSE_BUTTON_PIN GPIO_PIN7
#define STOP_BUTTON_PORT GPIO_PORT2
#define STOP_BUTTON_PIN GPIO_PIN6
#define STEPPER_PORT GPIO_PORT2
#define STEPPER_INDEX_PIN GPIO_PIN5
#define STEPPER_DIAG_PIN GPIO_PIN4
#define STEPPER_ENABLE_PIN GPIO_PIN3
#define STEPPER_STEP_PIN GPIO_PIN2
#define STEPPER_DIR_PIN GPIO_PIN1
#define RS_CS_PORT GPIO_PORT3
#define RS_CS_PIN GPIO_PIN4
#define RW_SID_PORT GPIO_PORT3
#define RW_SID_PIN GPIO_PIN3
#define E_SCLK_PORT GPIO_PORT3
#define E_SCLK_PIN GPIO_PIN2

/* advpwm-hal Settings */
#define HAL_PWM_API_QUADRATURE_ENCODER

/* timer-hal configs */
#define HAL_TIMER_API_STOP_TIMER
#define STEPPER_TIMER TIMER2
#define STEPPER_TIMER_ISR timer2_isr
#define STEPPER_TIMER_INTERRUPT TIMER2_INTERRUPT
#define GLOBAL_TIMER TIMER3
#define GLOBAL_TIMER_ISR timer3_isr
#define GLOBAL_TIMER_INTERRUPT TIMER3_INTERRUPT

/* Default Stepper values */
#define DEFAULT_STEPPER_FREQUENCY 50
#define STEPPER_CM_TO_STEPS 100 //TODO: needs testing
#define DEFAULT_MICROSTEPPING STEP_1X8
#define DEFAULT_STEP_NUM 3200

/* includes */
#include <STC/8H8KxxU/SKDIP28.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <delay.h>
#include <gpio-hal.h>
#include <lcd/lcd-device.h>
#include <lcd/lcd-text.h>
#include <lcd/links/lcd-link-serial.h>
#include <uart-hal.h>
#include <serial-console.h>
#include <timer-hal.h>
#include <advpwm-hal.h>
#include "global_timer.h"
#include "encoder.h"
#include "buttons.h"
#include "switch.h"
#include "display.h"

#endif
