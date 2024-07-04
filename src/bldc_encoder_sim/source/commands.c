#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include "commands.h"

#include "fsl_clock.h"

volatile uint32_t step_freq;

    
/**
 * @brief decode the new frequency received, and update systick timer
 * 
 * @param cmd received command from webusb
 */
void commands__check_command(uint8_t* cmd){
    uint8_t buf [4]; 

    //command "F=XXXX" received
    if(cmd[0] == 'F' && cmd[1] == '='){
        memcpy(buf, &cmd[2], 4);
        step_freq = atoi(buf);
        SysTick_Config(SystemCoreClock / step_freq);
    }
}
