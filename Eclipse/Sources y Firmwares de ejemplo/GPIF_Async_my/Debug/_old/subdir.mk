################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../_old/cyfxbulklpauto.c \
../_old/cyfxbulklpauto_modified.c \
../_old/cyfxbulklpdscr.c \
../_old/cyfxtx.c 

OBJS += \
./_old/cyfxbulklpauto.o \
./_old/cyfxbulklpauto_modified.o \
./_old/cyfxbulklpdscr.o \
./_old/cyfxtx.o 

C_DEPS += \
./_old/cyfxbulklpauto.d \
./_old/cyfxbulklpauto_modified.d \
./_old/cyfxbulklpdscr.d \
./_old/cyfxtx.d 


# Each subdirectory must supply rules for building sources it contributes
_old/%.o: ../_old/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -D__CYU3P_TX__=1 -I"D:\Program files (x86)\Cypress\EZ-USB FX3 SDK\1.2\\firmware\u3p_firmware\inc" -I"..\." -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=arm926ej-s -mthumb-interwork -g -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


