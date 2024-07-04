#include "fsl_device_registers.h"
#include "fsl_debug_console.h"
#include "pin_mux.h"
#include "board.h"
#include "fsl_clock.h"
#include "fsl_reset.h"
#include "bsp/board_api.h"
#include "tusb.h"
#include "usb_descriptors.h"
#include "usb_tasks.h"
#include <stdbool.h>

/*******************************************************************************
 * Definitions
 ******************************************************************************/

#define XTAL0_CLK_HZ (24 * 1000 * 1000U)

uint8_t hall_sensor_state = 0;


/*******************************************************************************
 * Code
 ******************************************************************************/
/*!
 * @brief Main function
 */
int main(void)
{
  /* Init board hardware. */
  BOARD_InitPins();
  BOARD_InitBootClocks();
  CLOCK_SetupExtClocking(XTAL0_CLK_HZ);
  BOARD_InitDebugConsole();

  /* Enable USB clock */
  RESET_PeripheralReset(kUSB0_RST_SHIFT_RSTn);
  CLOCK_EnableUsbfsClock();

  tusb_init();

  SysTick_Config(SystemCoreClock / 1000);

  while (1)
  {
    tud_task(); // tinyusb device task
    webserial_task(); // application task
  }
}

void USB0_IRQHandler(void)
{
  tud_int_handler(0);
}

/**
 * @brief Update the simulated signals depending of the configured frequency
 * 
 */
void SysTick_Handler(void)
{

  switch (hall_sensor_state)
  {

  case 0:
    GPIO_PinWrite(GPIO1, BOARD_INITPINS_POS_S1_PIN, 0);
    GPIO_PinWrite(GPIO1, BOARD_INITPINS_POS_S2_PIN, 0);
    GPIO_PinWrite(GPIO1, BOARD_INITPINS_POS_S3_PIN, 1);
    break;

  case 1:
    GPIO_PinWrite(GPIO1, BOARD_INITPINS_POS_S1_PIN, 0);
    GPIO_PinWrite(GPIO1, BOARD_INITPINS_POS_S2_PIN, 0);
    GPIO_PinWrite(GPIO1, BOARD_INITPINS_POS_S3_PIN, 0);
    break;

  case 2:
    GPIO_PinWrite(GPIO1, BOARD_INITPINS_POS_S1_PIN, 1);
    GPIO_PinWrite(GPIO1, BOARD_INITPINS_POS_S2_PIN, 0);
    GPIO_PinWrite(GPIO1, BOARD_INITPINS_POS_S3_PIN, 0);

    break;

  case 3:
    GPIO_PinWrite(GPIO1, BOARD_INITPINS_POS_S1_PIN, 1);
    GPIO_PinWrite(GPIO1, BOARD_INITPINS_POS_S2_PIN, 1);
    GPIO_PinWrite(GPIO1, BOARD_INITPINS_POS_S3_PIN, 0);
    break;

  case 4:
    GPIO_PinWrite(GPIO1, BOARD_INITPINS_POS_S1_PIN, 1);
    GPIO_PinWrite(GPIO1, BOARD_INITPINS_POS_S2_PIN, 1);
    GPIO_PinWrite(GPIO1, BOARD_INITPINS_POS_S3_PIN, 1);
    break;

  case 5:
    GPIO_PinWrite(GPIO1, BOARD_INITPINS_POS_S1_PIN, 0);
    GPIO_PinWrite(GPIO1, BOARD_INITPINS_POS_S2_PIN, 1);
    GPIO_PinWrite(GPIO1, BOARD_INITPINS_POS_S3_PIN, 1);
    break;
  }

  hall_sensor_state = (hall_sensor_state >= 5) ? 0 : (hall_sensor_state + 1);
}
