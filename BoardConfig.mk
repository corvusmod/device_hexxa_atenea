# inherit from the proprietary version
-include vendor/elephone/Q/BoardConfigVendor.mk

# Board
TARGET_BOARD_PLATFORM := mt6572
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_VFP := true
TARGET_CPU_SMP := true
TARGET_ARCH := arm
ARCH_ARM_HAVE_NEON := true
TARGET_NO_BOOTLOADER := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a7
TARGET_CPU_VARIANT:= cortex-a7
TARGET_CPU_MEMCPY_OPT_DISABLE := true

BOARD_HAS_NO_SELECT_BUTTON := true

# Enable dex-preoptimization
WITH_DEXPREOPT := true
DONT_DEXPREOPT_PREBUILTS := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6572

TARGET_USERIMAGES_USE_EXT4:=true

# Assert
#TARGET_OTA_ASSERT_DEVICE := HM2014011,wt93807

# MTK HARDWARE
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_USES_LEGACY_MTK_AV_BLOB := true
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

# RIL
BOARD_RIL_CLASS := ../../../device/elephone/Q/ril/

BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_CONNECTIVITY_MODULE := conn_soc

# Partitions & Image
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2452595200
BOARD_SYSTEMIMAGE_PARTITION_SIZE:=836600000
BOARD_CACHEIMAGE_PARTITION_SIZE := 134217728
BOARD_CACHEIMAGE_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

# Flags
TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_KMODULES := true

COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive selinux=0
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --base 0x40078000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --second_offset 0x00f00000 --tags_offset 0x00000100 --board v.s.160107
TARGET_PREBUILT_KERNEL := device/elephone/Q/kernel
BOARD_CUSTOM_BOOTIMG_MK := device/elephone/Q/MTKbootimg.mk
BOARD_CUSTOM_BOOTIMG := true

# Recovery
TARGET_RECOVERY_FSTAB := device/elephone/Q/rootdir/recovery.fstab

TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"

# TWRP
#DEVICE_RESOLUTION := 720x1280
#TARGET_SCREEN_HEIGHT := 1280
#TARGET_SCREEN_WIDTH := 720
#RECOVERY_GRAPHICS_USE_LINELENGTH := true
#TW_NO_REBOOT_BOOTLOADER := true
#TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0/gadget/lun%d/file
#TW_MAX_BRIGHTNESS := 255
#TW_INTERNAL_STORAGE_PATH := "/emmc"
#TW_INTERNAL_STORAGE_MOUNT_POINT := "emmc"
#TW_EXTERNAL_STORAGE_PATH := "/external_sd"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
#TW_CRYPTO_FS_TYPE := "ext4"
#TW_CRYPTO_REAL_BLKDEV := "/dev/block/mmcblk0p7"
#TW_CRYPTO_MNT_POINT := "/data"
#TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,discard,noauto_da_alloc,data=ordered"
#TW_EXCLUDE_SUPERSU := true
#TW_INCLUDE_FB2PNG := true
#TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/elephone/Q/bluetooth

# Healthd
#HEALTHD_ENABLE_TRICOLOR_LED := true
#RED_LED_PATH := /sys/class/leds/red/brightness
#GREEN_LED_PATH := /sys/class/leds/green/brightness
#BLUE_LED_PATH := /sys/class/leds/blue/brightness

# EGL settings
BOARD_EGL_CFG := device/elephone/Q/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# Selinux
BOARD_SEPOLICY_DIRS := \
       device/elephone/Q/sepolicy

BOARD_SEPOLICY_UNION := \
       device.te \
       app.te \
       netd.te \
       system.te \
       file_contexts

# WIFI
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# GPS
TARGET_SPECIFIC_HEADER_PATH := device/elephone/Q/include

LCM_HEIGHT=432
LCM_WIDTH=240
