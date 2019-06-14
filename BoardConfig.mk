#Bootloader 

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := universal7570_go

# Platform

TARGET_BOARD_PLATFORM := exynos5
TARGET_BOARD_SOC := exynos7570
TARGET_BOARD_PLATFORM_GPU := mali-t720

# Architecture

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_CORTEX_A53 := true
TARGET_CPU_SMP := true
TARGET_USES_64_BIT_BINDER := true
ARCH_ARM_HAVE_NEON := true

#Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_USES_64_BIT_BINDER := true
TARGET_PREBUILT_KERNEL := device/samsung/j2corelte/prebuilt/Image
TARGET_PREBUILT_DTB := device/samsung/j2corelte/prebuilt/dt.img

# Building kernel from source
#TARGET_KERNEL_CONFIG := j2corelte_01_defconfig
#TARGET_KERNEL_SOURCE := kernel/samsung/j2corelte
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
#KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin
#CROSS_COMPILE := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin

#BOOT image 
BOARD_CUSTOM_BOOTIMG_MK :=  device/samsung/j2corelte/bootimg.mk
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_CMDLINE := # Exynos doesn't take cmdline arguments from boot image
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
# 000RU = recovery kernel, 000KU = system kernel
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --board SRPRF18A001RU

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 41943040
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 39845888
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1275068416
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5905580032
BOARD_VENDORIMAGE_PARTITION_SIZE := 184549376
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4  
BOARD_FLASH_BLOCK_SIZE := 131072

# File System
# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Workaround for error copying vendor files to recovery ramdisk
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# TWRP specific build flags
TW_THEME := portrait_mdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
#BOARD_HAS_NO_REAL_SDCARD := true
TW_BRIGHTNESS_PATH := "/sys/devices/14800000.dsim/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true
#TW_USE_NEW_MINADBD := true

# Encryption support
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_SAMSUNG := true
#TARGET_HW_DISK_ENCRYPTION := true

# Debug flags
#TWRP_EVENT_LOGGING := true
#TW_NEVER_UNMOUNT_SYSTEM := true
#TARGET_USES_LOGD := true
#TWRP_INCLUDE_LOGCAT := true
