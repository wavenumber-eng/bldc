################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tinyusb/src/portable/chipidea/ci_hs/dcd_ci_hs.c \
../tinyusb/src/portable/chipidea/ci_hs/hcd_ci_hs.c 

C_DEPS += \
./tinyusb/src/portable/chipidea/ci_hs/dcd_ci_hs.d \
./tinyusb/src/portable/chipidea/ci_hs/hcd_ci_hs.d 

OBJS += \
./tinyusb/src/portable/chipidea/ci_hs/dcd_ci_hs.o \
./tinyusb/src/portable/chipidea/ci_hs/hcd_ci_hs.o 


# Each subdirectory must supply rules for building sources it contributes
tinyusb/src/portable/chipidea/ci_hs/%.o: ../tinyusb/src/portable/chipidea/ci_hs/%.c tinyusb/src/portable/chipidea/ci_hs/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DBOARD_TUD_RHPORT=0 -DCFG_TUSB_MCU=OPT_MCU_MCXA -DCPU_MCXA153VLH -DCPU_MCXA153VLH_cm33_nodsp -DPRINTF_FLOAT_ENABLE=0 -DSCANF_FLOAT_ENABLE=0 -DPRINTF_ADVANCED_ENABLE=0 -DSCANF_ADVANCED_ENABLE=0 -DMCUXPRESSO_SDK -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\Jerry\Desktop\Wavenumber\MedicalCentrifuge\HallEfectSimulator\encoder_sim\source" -I"C:\Users\Jerry\Desktop\Wavenumber\MedicalCentrifuge\HallEfectSimulator\encoder_sim\tinyusb\src" -I"C:\Users\Jerry\Desktop\Wavenumber\MedicalCentrifuge\HallEfectSimulator\encoder_sim\tinyusb\hw" -I"C:\Users\Jerry\Desktop\Wavenumber\MedicalCentrifuge\HallEfectSimulator\encoder_sim\drivers" -I"C:\Users\Jerry\Desktop\Wavenumber\MedicalCentrifuge\HallEfectSimulator\encoder_sim\device" -I"C:\Users\Jerry\Desktop\Wavenumber\MedicalCentrifuge\HallEfectSimulator\encoder_sim\utilities" -I"C:\Users\Jerry\Desktop\Wavenumber\MedicalCentrifuge\HallEfectSimulator\encoder_sim\component\uart" -I"C:\Users\Jerry\Desktop\Wavenumber\MedicalCentrifuge\HallEfectSimulator\encoder_sim\component\lists" -I"C:\Users\Jerry\Desktop\Wavenumber\MedicalCentrifuge\HallEfectSimulator\encoder_sim\CMSIS" -I"C:\Users\Jerry\Desktop\Wavenumber\MedicalCentrifuge\HallEfectSimulator\encoder_sim\frdmmcxa153\demo_apps\hello_world" -I"C:\Users\Jerry\Desktop\Wavenumber\MedicalCentrifuge\HallEfectSimulator\encoder_sim\board" -O0 -fno-common -g3 -gdwarf-4 -mcpu=cortex-m33+nodsp -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33+nodsp -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tinyusb-2f-src-2f-portable-2f-chipidea-2f-ci_hs

clean-tinyusb-2f-src-2f-portable-2f-chipidea-2f-ci_hs:
	-$(RM) ./tinyusb/src/portable/chipidea/ci_hs/dcd_ci_hs.d ./tinyusb/src/portable/chipidea/ci_hs/dcd_ci_hs.o ./tinyusb/src/portable/chipidea/ci_hs/hcd_ci_hs.d ./tinyusb/src/portable/chipidea/ci_hs/hcd_ci_hs.o

.PHONY: clean-tinyusb-2f-src-2f-portable-2f-chipidea-2f-ci_hs

