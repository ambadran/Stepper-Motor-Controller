#ifndef SWITCH_H
#define SWITCH_H

typedef enum {
  SWITCH_OFF = 0,
  SWITCH_ON
} switch_status_t;

void switch_init(void);
stepper_enable_status_t get_hold_free_switch_status(void);
stepper_direction_t get_cw_ccw_switch_switch_status(void);
switch_status_t get_control_mode_switch_status(void);

#endif
