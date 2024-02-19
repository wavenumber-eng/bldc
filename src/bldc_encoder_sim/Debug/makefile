################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include utilities/subdir.mk
-include tinyusb/src/typec/subdir.mk
-include tinyusb/src/portable/wch/subdir.mk
-include tinyusb/src/portable/valentyusb/eptri/subdir.mk
-include tinyusb/src/portable/ti/msp430x5xx/subdir.mk
-include tinyusb/src/portable/template/subdir.mk
-include tinyusb/src/portable/synopsys/dwc2/subdir.mk
-include tinyusb/src/portable/sunxi/subdir.mk
-include tinyusb/src/portable/st/typec/subdir.mk
-include tinyusb/src/portable/st/stm32_fsdev/subdir.mk
-include tinyusb/src/portable/sony/cxd56/subdir.mk
-include tinyusb/src/portable/renesas/rusb2/subdir.mk
-include tinyusb/src/portable/raspberrypi/rp2040/subdir.mk
-include tinyusb/src/portable/raspberrypi/pio_usb/subdir.mk
-include tinyusb/src/portable/ohci/subdir.mk
-include tinyusb/src/portable/nxp/lpc_ip3511/subdir.mk
-include tinyusb/src/portable/nxp/lpc17_40/subdir.mk
-include tinyusb/src/portable/nuvoton/nuc505/subdir.mk
-include tinyusb/src/portable/nuvoton/nuc121/subdir.mk
-include tinyusb/src/portable/nuvoton/nuc120/subdir.mk
-include tinyusb/src/portable/nordic/nrf5x/subdir.mk
-include tinyusb/src/portable/mindmotion/mm32/subdir.mk
-include tinyusb/src/portable/microchip/samx7x/subdir.mk
-include tinyusb/src/portable/microchip/samg/subdir.mk
-include tinyusb/src/portable/microchip/samd/subdir.mk
-include tinyusb/src/portable/microchip/pic32mz/subdir.mk
-include tinyusb/src/portable/microchip/pic/subdir.mk
-include tinyusb/src/portable/mentor/musb/subdir.mk
-include tinyusb/src/portable/espressif/esp32sx/subdir.mk
-include tinyusb/src/portable/ehci/subdir.mk
-include tinyusb/src/portable/dialog/da146xx/subdir.mk
-include tinyusb/src/portable/chipidea/ci_hs/subdir.mk
-include tinyusb/src/portable/chipidea/ci_fs/subdir.mk
-include tinyusb/src/portable/bridgetek/ft9xx/subdir.mk
-include tinyusb/src/portable/analog/max3421/subdir.mk
-include tinyusb/src/host/subdir.mk
-include tinyusb/src/device/subdir.mk
-include tinyusb/src/common/subdir.mk
-include tinyusb/src/class/video/subdir.mk
-include tinyusb/src/class/vendor/subdir.mk
-include tinyusb/src/class/usbtmc/subdir.mk
-include tinyusb/src/class/net/subdir.mk
-include tinyusb/src/class/msc/subdir.mk
-include tinyusb/src/class/midi/subdir.mk
-include tinyusb/src/class/hid/subdir.mk
-include tinyusb/src/class/dfu/subdir.mk
-include tinyusb/src/class/cdc/subdir.mk
-include tinyusb/src/class/bth/subdir.mk
-include tinyusb/src/class/audio/subdir.mk
-include tinyusb/src/subdir.mk
-include startup/subdir.mk
-include source/subdir.mk
-include drivers/subdir.mk
-include device/subdir.mk
-include component/uart/subdir.mk
-include component/lists/subdir.mk
-include board/subdir.mk
ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := encoder_sim
BUILD_ARTIFACT_EXTENSION := axf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all:
	+@$(MAKE) --no-print-directory main-build && $(MAKE) --no-print-directory post-build

# Main-build Target
main-build: encoder_sim.axf

# Tool invocations
encoder_sim.axf: $(OBJS) $(USER_OBJS) makefile $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
	arm-none-eabi-gcc -nostdlib -Xlinker -no-warn-rwx-segments -Xlinker -Map="encoder_sim.map" -Xlinker --gc-sections -Xlinker -print-memory-usage -Xlinker --sort-section=alignment -Xlinker --cref -mcpu=cortex-m33+nodsp -mthumb -T encoder_sim_Debug.ld -o "encoder_sim.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) encoder_sim.axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size 'encoder_sim.axf'; arm-none-eabi-objcopy -v -O binary 'encoder_sim.axf' 'encoder_sim.bin'
	-@echo ' '

.PHONY: all clean dependents main-build post-build

-include ../makefile.targets
