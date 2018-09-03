# MTK audio
BOARD_USES_MTK_AUDIO := true
#USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
MTK_BT_SUPPORT := yes
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth
BOARD_GPS_LIBRARIES := true
BOARD_CONNECTIVITY_MODULE := conn_soc
BOARD_MEDIATEK_USES_GPS := true
BOARD_USES_AOSP_GPS_HAL := true

# Bootanimation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Camera
USE_CAMERA_STUB := true

# Legacy HAL
#TARGET_HAS_LEGACY_CAMERA_HAL1 := true

# OTA assert
TARGET_OTA_ASSERT_DEVICE := t1,p15v57c2k_gq_tee
BOARD_HAS_FLIPPED_SCREEN := true

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Configure jemalloc for low memory
MALLOC_SVELTE := true

# Display
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
MAX_VIRTUAL_DISPLAY_DIMENSION := 1
PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0
MTK_HWC_SUPPORT := yes
MTK_HWC_VERSION := 1.4.1

# Partitions informations
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 25165824
BOARD_CACHEIMAGE_PARTITION_SIZE := 452984832
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3758096384
BOARD_USERDATAIMAGE_PARTITION_SIZE := 58065927680
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_LARGE_FILESYSTEM := true

# Partitions types
#TARGET_USE_MKE2FS_FORMAT := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# GPS
BOARD_GPS_LIBRARIES := true
BOARD_MEDIATEK_USES_GPS := true

# CM hardware
BOARD_HARDWARE_CLASS := $(LOCAL_PATH)/cmhw

# MTK Hardware
BOARD_USES_MTK_HARDWARE := true
BOARD_GLOBAL_CFLAGS += -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
BOARD_GLOBAL_CFLAGS += -DCOMPAT_SENSORS_M

# Kernel information
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_NAME := 1509953733
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x40ef8000
BOARD_TAGS_OFFSET := 0x03f88000
BOARD_MKBOOTIMG_ARGS := --cmdline bootopt=64S3,32N2,64N2 --base $(BOARD_KERNEL_BASE) --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET) --board $(BOARD_NAME) --pagesize $(BOARD_KERNEL_PAGESIZE)
TARGET_IS_64_BIT := true
MTK_K64_SUPPORT := yes
TARGET_KERNEL_ARCH := arm64

# Kernel properties
#TARGET_KERNEL_SOURCE := kernel/ulefone/t1
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilts/kernel
TARGET_KERNEL_CONFIG := lineage_t1_defconfig
BOARD_KERNEL_IMAGE_NAME := Image.gz
MTK_APPENDED_DTB_SUPPORT := yes

# Platform
TARGET_BOOTLOADER_BOARD_NAME := mt6757
MTK_PROJECT_CONFIG ?= $(LOCAL_PATH)/ProjectConfig.mk
include $(MTK_PROJECT_CONFIG)
MTK_INTERNAL_CDEFS := $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_NAME),$(if $(filter-out no NO none NONE false FALSE,$($(t))),-D$(t)))
MTK_INTERNAL_CDEFS += $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_VALUE),$(if $(filter-out no NO none NONE false FALSE,$($(t))),$(foreach v,$(shell echo $($(t)) | tr '[a-z]' '[A-Z]'),-D$(v))))
MTK_INTERNAL_CDEFS += $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_NAME_VALUE),$(if $(filter-out no NO none NONE false FALSE,$($(t))),-D$(t)=\"$($(t))\"))
BOARD_GLOBAL_CFLAGS += $(MTK_INTERNAL_CDEFS)
BOARD_GLOBAL_CPPFLAGS += $(MTK_INTERNAL_CDEFS)

# Legacy blobs
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true

# Images
TARGET_NO_BOOTLOADER := true

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Recovery
BOARD_USES_FULL_RECOVERY_IMAGE := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/recovery.fstab
RECOVERY_VARIANT := twrp
ifeq ($(RECOVERY_VARIANT), twrp)
  DEVICE_RESOLUTION := 1080x1920
  DEVICE_SCREEN_WIDTH := 1080
  DEVICE_SCREEN_HEIGHT := 1920
  RECOVERY_SDCARD_ON_DATA := true
  #TW_DEFAULT_EXTERNAL_STORAGE := true
  TW_INTERNAL_STORAGE_PATH := "/data/media"
  TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
  TW_EXTERNAL_STORAGE_PATH := "/external_sd"
  TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
  TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file
  TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"
  #TW_NO_REBOOT_BOOTLOADER := true
  TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
  #TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
  RECOVERY_GRAPHICS_USE_LINELENGTH := true
  BOARD_SUPPRESS_SECURE_ERASE := true
  TW_INCLUDE_CRYPTO := true
  TW_MAX_BRIGHTNESS := 255
  TW_DEFAULT_BRIGHTNESS := 80
  TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
  TW_NO_USB_STORAGE := true
  BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
  TARGET_DISABLE_TRIPLE_BUFFERING := false
  #TW_USE_TOOLBOX := true
  TW_FLASH_FROM_STORAGE := true
  TW_NEW_ION_HEAP := true
  TWHAVE_SELINUX := true
  TW_THEME := portrait_hdpi
  #TW_EXCLUDE_SUPERSU := true
  #TW_EXTRA_LANGUAGES := true
  # TWRP.fstab
  PRODUCT_COPY_FILES += \
      $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab \
      bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata
else
  # CWMR
  BOARD_RECOVERY_SWIPE := true
  BOARD_SUPPRESS_EMMC_WIPE := true
  BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
endif

# RIL
BOARD_RIL_CLASS := ../../../device/ulefone/t1/ril
BOARD_CONNECTIVITY_MODULE := conn_soc

# WiFi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:= /dev/wmtWifi
WIFI_DRIVER_FW_PATH_AP:= AP
WIFI_DRIVER_FW_PATH_STA:= STA
WIFI_DRIVER_FW_PATH_P2P:= P2P
WIFI_DRIVER_STATE_CTRL_PARAM := /dev/wmtWifi
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0
