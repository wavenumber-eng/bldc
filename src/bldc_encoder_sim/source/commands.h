#include <stdbool.h>

#ifndef COMMANDS_H
#define COMMANDS_H

extern void commands__check_command(uint8_t* cmd);
extern volatile bool enable_hall_effect;

#endif
