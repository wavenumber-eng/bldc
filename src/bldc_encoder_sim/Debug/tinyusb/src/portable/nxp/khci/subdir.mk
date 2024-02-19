################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tinyusb/src/portable/nxp/khci/dcd_khci.c \
../tinyusb/src/portable/nxp/khci/hcd_khci.c 

C_DEPS += \
./tinyusb/src/portable/nxp/khci/dcd_khci.d \
./tinyusb/src/portable/nxp/khci/hcd_khci.d 

OBJS += \
./tinyusb/src/portable/nxp/khci/dcd_khci.o \
./tinyusb/src/portable/nxp/khci/hcd_khci.o 


# Each subdirectory must supply rules for building sources it contributes
tinyusb/src/portable/nxp/khci/%.o: ../tinyusb/src/portable/nxp/khci/%.c tinyusb/src/portable/nxp/khci/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DBOARD_TUD_RHPORT=0 -DCFG_TUSB_MCU=OPT_MCU_MCXA -DCPU_MCXA153VLH -DCPU_MCXA153VLH_cm33_nodsp -DPRINTF_FLOAT_ENABLE=0 -DSCANF_FLOAT_ENABLE=0 -DPRINTF_ADVANCED_ENABLE=0 -DSCANF_ADVANCED_ENABLE=0 -DMCUXPRESSO_SDK -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\Jerry\Desktop\Wavenumber\MedicalCentrifuge\HallEfectSimulator\frdmmcxa153_hello_world\source" -I"C:\Users\Jerry\Desktop\Wavenumber\MedicalCentrifuge\HallEfectSimulator\frdmmcxa153_hello_world\tinyusb\src" -I"C:\Users\Jerry\Desktop\Wavenumber\MedicalCentrifuge\HallEfectSimulator\frdmmcxa153_hello_world\tinyusb\hw" -I"C:\Users\Jerry\Desktop\Wavenumber\MedicalCentrifuge\HallEfectSimulator\frdmmcxa153_hello_world\drivers" -I"C:\Users\Jerry\Desktop\Wavenumber\MedicalCentrifuge\HallEfectSimulator\frdmmcxa153_hello_world\device" -I"C:\Users\Jerry\Desktop\Wavenumber\MedicalCentrifuge\HallEfectSimulator\frdmmcxa153_hello_world\utilities" -I"C:\Users\Jerry\Desktop\Wavenumber\MedicalCentrifuge\HallEfectSimulator\frdmmcxa153_hello_world\component\uart" -I"C:\Users\Jerry\Desktop\Wavenumber\MedicalCentrifuge\HallEfectSimulator\frdmmcxa153_hello_world\component\lists" -I"C:\Users\Jerry\Desktop\Wavenumber\MedicalCentrifuge\HallEfectSimulator\frdmmcxa153_hello_world\CMSIS" -I"C:\Users\Jerry\Desktop\Wavenumber\MedicalCentrifuge\HallEfectSimulator\frdmmcxa153_hello_world\frdmmcxa153\demo_apps\hello_world" -I"C:\Users\Jerry\Desktop\Wavenumber\MedicalCentrifuge\HallEfectSimulator\frdmmcxa153_hello_world\board" -O0 -fno-common -g3 -gdwarf-4 -mcpu=cortex-m33+nodsp -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33+nodsp -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-tinyusb-2f-src-2f-portable-2f-nxp-2f-khci

clean-tinyusb-2f-src-2f-portable-2f-nxp-2f-khci:
	-$(RM) ./tinyusb/src/portable/nxp/khci/dcd_khci.d ./tinyusb/src/portable/nxp/khci/dcd_khci.o ./tinyusb/src/portable/nxp/khci/hcd_khci.d ./tinyusb/src/portable/nxp/khci/hcd_khci.o

.PHONY: clean-tinyusb-2f-src-2f-portable-2f-nxp-2f-khci

