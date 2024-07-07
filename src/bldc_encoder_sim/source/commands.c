#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include "commands.h"

#include "fsl_clock.h"

volatile uint32_t step_freq;
volatile bool enable_hall_effect = false;
    
/**
 * @brief decode the new frequency received, and update systick timer
 * 
 * @param cmd received command from webusb
 */
void commands__check_command(uint8_t* cmd){
    uint8_t buf [4]; 

    //command "F=XXXX" received
    if(cmd[0] == 'F' && cmd[1] == '=')
    {
        memcpy(buf, &cmd[2], 4);
        step_freq = atoi(buf);

        if(step_freq == 0)
        {
        	enable_hall_effect = false;
        	SysTick_Config(SystemCoreClock / 1000);
        }
        else
        {
        	enable_hall_effect = true;
        	SysTick_Config(SystemCoreClock / step_freq / 6);
        }

    }
}
