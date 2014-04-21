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
GPIF_Async.lst \

SECONDARY_SIZE += \
GPIF_Async.siz \


# All Target
all: GPIF_Async.elf secondary-outputs

# Tool invocations
GPIF_Async.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM Sourcery Windows GCC C Linker'
	arm-none-eabi-gcc $(OBJS) $(USER_OBJS) $(LIBS) -T"C:\Program Files\Cypress\EZ-USB FX3 SDK\1.0\/firmware/common/fx3.ld" -nostartfiles -Wl,-Map,GPIF_Async.map -Wl,-d -Wl,--no-wchar-size-warning -Wl,--entry,CyU3PFirmwareEntry "C:\Program Files\Cypress\EZ-USB FX3 SDK\1.0\\firmware\u3p_firmware\lib\fx3_release\cyfxapi.a" "C:\Program Files\Cypress\EZ-USB FX3 SDK\1.0\\firmware\u3p_firmware\lib\fx3_release\cyu3threadx.a"  "C:\Program Files\Cypress\EZ-USB FX3 SDK\1.0\\arm-none-eabi\lib\libc.a" "C:\Program Files\Cypress\EZ-USB FX3 SDK\1.0\\lib\gcc\arm-none-eabi\4.5.2\libgcc.a" -mcpu=arm926ej-s -mthumb-interwork -o"GPIF_Async.elf"
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

GPIF_Async.lst: GPIF_Async.elf
	@echo 'Invoking: ARM Sourcery Windows GNU Create Listing'
	arm-none-eabi-objdump -h -S GPIF_Async.elf >"GPIF_Async.lst"
	@echo 'Finished building: $@'
	@echo ' '

GPIF_Async.siz: GPIF_Async.elf
	@echo 'Invoking: ARM Sourcery Windows GNU Print Size'
	arm-none-eabi-size  --format=berkeley GPIF_Async.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(SECONDARY_SIZE)$(OBJS)$(C_DEPS)$(ASM_DEPS)$(EXECUTABLES)$(SECONDARY_LIST)$(S_UPPER_DEPS) GPIF_Async.elf
	-@echo ' '

post-build:
	-@echo 'Converting ELF to image (.img) format'
	-"C:\Program Files\Cypress\EZ-USB FX3 SDK\1.0\\util\elf2img\elf2img.exe" -i GPIF_Async.elf -o GPIF_Async.img
	-@echo ' '

secondary-outputs: $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets
