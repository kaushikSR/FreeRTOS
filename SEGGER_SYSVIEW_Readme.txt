Create subfolder SEGGER under ThirdParty and copy the following SEGGER files from SystemView_Src_V252d

STM32HelloWorld\ThirdParty\SEGGER>ls -R

./Config:

Global.h - from SystemView_Src_V252d\Config

SEGGER_SYSVIEW_Conf.h - from SystemView_Src_V252d\Config

SEGGER_RTT_Conf.h - from SystemView_Src_V252d\Config

SEGGER_SYSVIEW_Config_FreeRTOS.c - from SystemView_Src_V252d\Sample\FreeRTOSV10\Config

./OS:

SEGGER_SYSVIEW_FreeRTOS.c - from SystemView_Src_V252d\Sample\FreeRTOSV10

SEGGER_SYSVIEW_FreeRTOS.h

./Patch/FreeRTOSv10.1.1:

FreeRTOSV10_Core.patch - from SystemView_Src_V252d\Sample\FreeRTOSV10\Patch

./SEGGER: - all files copied from SystemView_Src_V252d\SEGGER

SEGGER.h

SEGGER_SYSVIEW.c

SEGGER_SYSVIEW_Int.h

SEGGER_RTT.c

SEGGER_SYSVIEW.h

SEGGER_RTT.h

SEGGER_SYSVIEW_ConfDefaults.h



- refresh folder in Eclipse, and add paths of all folders with .h files so the compiler can find them.



In eclipse select ThirdParty\FreeRTOS folder, right click select "team"->"Apply Patch".

Select the file /Patch/FreeRTOSv10.1.1/FreeRTOSV10_Core.patch

Click "Open" then "Next" then select FreeRTOS folder, "Next" "Finish"



Add at the end of FreeRTOSConfig.h

#include "SEGGER_SYSVIEW_FreeRTOS.h"



Also in FreeRTOSConfig.h add

#define INCLUDE_xTaskGetIdleTaskHandle 1 // Segger

#define INCLUDE_pxTaskGetStackStart 1 // Segger



In SEGGER_SYSVIEW_Conf.h

Select MCU core e.g. #define SEGGER_SYSVIEW_CORE SEGGER_SYSVIEW_CORE_CM3

Select buffer size: #define SEGGER_SYSVIEW_RTT_BUFFER_SIZE 1024 * 8 // Number of bytes that SystemView uses for the buffer.



In SEGGER_SYSVIEW_Config_FreeRTOS.c edit following macros

// The application name to be displayed in SystemViewer

#define SYSVIEW_APP_NAME "FreeRTOSHelloWorldApp"

// The target device name

#define SYSVIEW_DEVICE_NAME "STM32L4"

// The lowest RAM address used for IDs (pointers)

#define SYSVIEW_RAM_BASE (0x20000000)



In main.c enable the DWT_CYCCNT (used by segger for timing)

DWT->CTRL |= 1; // enable CYCCNT



In main.c add

SEGGER_SYSVIEW_Conf();

SEGGER_SYSVIEW_Start(); // start recording SEGGER



Now make sure the project builds and load to the CPU in the debugger.