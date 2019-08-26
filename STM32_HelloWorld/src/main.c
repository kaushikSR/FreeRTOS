/**
  ******************************************************************************
  * @file    main.c
  * @author  Ac6
  * @version V1.0
  * @date    01-December-2013
  * @brief   Default main function.
  ******************************************************************************
*/


#include "stm32f4xx.h"
			

int main(void)
{
		// By default, it uses PLL at 180MHz
		//Reset the RCC clock configuration to the default reset state.
		//HSI ON, PLL OFF, HSE OFF, system clock = 16MHz, cpu_clock = 16MHz
		RCC_DeInit();


		//updating the SystemCoreClock variable
		SystemCoreClockUpdate();

	for(;;);
}
