DEVICE_PATH := device/meizu/m2mini

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include $(VENDOR_PATH)/BoardConfigVendor.mk
-include $(DEVICE_PATH)/config/*.mk

TARGET_BOARD_PLATFORM := mt6735

TARGET_OTA_ASSERT_DEVICE := m2mini,m2,m81,m88,meilan2

# Architecture
ifeq ($(FORCE_32_BIT),true)
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
else
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
endif

TARGET_NO_BOOTLOADER := true
TARGET_CPU_SMP := true

ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true

TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_USERIMAGES_USE_EXT4:=true

TARGET_BOOTLOADER_BOARD_NAME := mt6735

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40078000
#extracted from stock recovery
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x03f88000
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/tools/mkbootimg.mk
TARGET_KERNEL_CONFIG := m2mini_defconfig
TARGET_KERNEL_SOURCE := kernel/meizu/m2mini
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb

#extracted from /proc/partinfo
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 50331648
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12831948800
BOARD_CACHEIMAGE_PARTITION_SIZE := 419439400
#pagesize * 64
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --tags_offset 0x0df88000 --board 1450664547 

#fstab
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/recovery.fstab

#SE
# Sepolicy hack for old kernel, our mt6735 version is 29
POLICYVERS := 29
