#ifndef APPLICATION_H
#define APPLICATION_H

typedef enum {
  STEP_CONTROL_PAGE = 0,
  ENCODER_CONTROL_PAGE,
} page_t;

void application_init(void);
void application_process_current_page(void);
void application_step_control_mode(void);
void application_encoder_control_mode (void);

#endif
