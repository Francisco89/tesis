################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := cs-rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_LIST += \
PwmFirmwareStandalone.lst \

SECONDARY_SIZE += \
PwmFirmwareStandalone.siz \


# All Target
all: PwmFirmwareStandalone.elf secondary-outputs

# Tool invocations
PwmFirmwareStandalone.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM Sourcery Windows GCC C Linker'
	arm-none-eabi-gcc $(OBJS) $(USER_OBJS) $(LIBS) -T"C:\EZ-USB FX3 SDK\1.3\/firmware/common/fx3.ld" -nostartfiles -Wl,-Map,PwmFirmwareStandalone.map -Wl,-d -Wl,--no-wchar-size-warning -Wl,--entry,CyU3PFirmwareEntry "C:\EZ-USB FX3 SDK\1.3\\firmware\u3p_firmware\lib\fx3_release\cyfxapi.a" "C:\EZ-USB FX3 SDK\1.3\\firmware\u3p_firmware\lib\fx3_release\cyu3lpp.a" "C:\EZ-USB FX3 SDK\1.3\\firmware\u3p_firmware\lib\fx3_release\cyu3threadx.a"  "C:\EZ-USB FX3 SDK\1.3\\arm-none-eabi\lib\libc.a" "C:\EZ-USB FX3 SDK\1.3\\lib\gcc\arm-none-eabi\4.5.2\libgcc.a" -mcpu=arm926ej-s -mthumb-interwork -o"PwmFirmwareStandalone.elf"
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

PwmFirmwareStandalone.lst: PwmFirmwareStandalone.elf
	@echo 'Invoking: ARM Sourcery Windows GNU Create Listing'
	arm-none-eabi-objdump -h -S PwmFirmwareStandalone.elf > "PwmFirmwareStandalone.lst"
	@echo 'Finished building: $@'
	@echo ' '

PwmFirmwareStandalone.siz: PwmFirmwareStandalone.elf
	@echo 'Invoking: ARM Sourcery Windows GNU Print Size'
	arm-none-eabi-size  --format=berkeley PwmFirmwareStandalone.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(SECONDARY_SIZE)$(OBJS)$(C_DEPS)$(ASM_DEPS)$(EXECUTABLES)$(SECONDARY_LIST)$(S_UPPER_DEPS) PwmFirmwareStandalone.elf
	-@echo ' '

post-build:
	-@echo 'Converting ELF to image (.img) format'
	-'C:\EZ-USB FX3 SDK\1.3\\util\elf2img\elf2img.exe' -i PwmFirmwareStandalone.elf -o PwmFirmwareStandalone.img
	-@echo ' '

secondary-outputs: $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets
