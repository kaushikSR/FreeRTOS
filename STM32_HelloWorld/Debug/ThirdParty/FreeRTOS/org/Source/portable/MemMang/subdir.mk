################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/FreeRTOS/org/Source/portable/MemMang/heap_4.c 

OBJS += \
./ThirdParty/FreeRTOS/org/Source/portable/MemMang/heap_4.o 

C_DEPS += \
./ThirdParty/FreeRTOS/org/Source/portable/MemMang/heap_4.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/FreeRTOS/org/Source/portable/MemMang/%.o: ../ThirdParty/FreeRTOS/org/Source/portable/MemMang/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32 -DSTM32F4 -DSTM32F446RETx -DNUCLEO_F446RE -DDEBUG -DSTM32F446xx -DUSE_STDPERIPH_DRIVER -I"/media/kaushik/localDiskA/RTOS_Workspace/STM32_HelloWorld/StdPeriph_Driver/inc" -I"/media/kaushik/localDiskA/RTOS_Workspace/STM32_HelloWorld/Config" -I"/media/kaushik/localDiskA/RTOS_Workspace/STM32_HelloWorld/ThirdParty/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"/media/kaushik/localDiskA/RTOS_Workspace/STM32_HelloWorld/ThirdParty/FreeRTOS/org/Source/portable/MemMang" -I"/media/kaushik/localDiskA/RTOS_Workspace/STM32_HelloWorld/ThirdParty/FreeRTOS/org/Source/include" -I"/media/kaushik/localDiskA/RTOS_Workspace/STM32_HelloWorld/inc" -I"/media/kaushik/localDiskA/RTOS_Workspace/STM32_HelloWorld/CMSIS/device" -I"/media/kaushik/localDiskA/RTOS_Workspace/STM32_HelloWorld/CMSIS/core" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


