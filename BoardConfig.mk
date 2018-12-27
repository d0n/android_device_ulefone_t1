#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)
COMMON_PATH := device/cyanogen/mt6757-common
#USE_NINJA := false
#$(info $(BUILD_NUMBER))
#BUILD_DATE := $(shell date -u +"%s")
DEVICE_PATH := device/ulefone/t1
MTKPATH := $(DEVICE_PATH)
MTK_PROJECT := mt6757
MTK_PROJECT_NAME := EVEN6753_65C_L1
MTK_PLATFORM := MT6757
MTK_BASE_PROJECT := p15v57c2k_gq_tee
MTK_PROJECT_CONFIG := $(DEVICE_PATH)/ProjectConfig.mk
MTK_PATH_SOURCE := vendor/mediatek/proprietary
MTK_TARGET_PROJECT_FOLDER := $(DEVICE_PATH)
MTK_PROJECT_LOCATION := $(DEVICE_PATH)
MTK_PATH_CUSTOM := $(MTK_PATH_SOURCE)/custom
MTK_PATH_COMMON := $(MTK_PATH_CUSTOM)/common
MTK_PATH_PLATFORM := $(MTK_PATH_SOURCE)
MTK_PATH_CUSTOM_PLATFORM := $(MTK_PATH_CUSTOM)/$(MTK_PROJECT)
PROJECT_FOLDER := $(DEVICE_PATH)

include $(DEVICE_PATH)/board/mt6757.mk
#$(call inherit-product, device/ulefone/t1/ProjectConfig.mk)
#$(call inherit-product, device/ulefone/t1/PlatformConfig.mk)
#include $(COMMON_PATH)/BoardConfigCommon.mk
#include $(COMMON_PATH)/mt6757.mk
include $(DEVICE_PATH)/PlatformConfig.mk
include $(DEVICE_PATH)/ProjectConfig.mk
include $(MTK_PROJECT_CONFIG)
MTK_INTERNAL_CDEFS := $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_NAME),$(if $(filter-out no NO none NONE false FALSE,$($(t))),-D$(t)))
MTK_INTERNAL_CDEFS += $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_VALUE),$(if $(filter-out no NO none NONE false FALSE,$($(t))),$(foreach v,$(shell echo $($(t)) | tr '[a-z]' '[A-Z]'),-D$(v))))
MTK_INTERNAL_CDEFS += $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_NAME_VALUE),$(if $(filter-out no NO none NONE false FALSE,$($(t))),-D$(t)=\"$($(t))\"))
BOARD_GLOBAL_CFLAGS += $(MTK_INTERNAL_CDEFS)
BOARD_GLOBAL_CPPFLAGS += $(MTK_INTERNAL_CDEFS)
BOARD_GLOBAL_CPPFLAGS += -DMTK_HARDWARE
BOARD_GLOBAL_CFLAGS += \
  -DMTK_HARDWARE \
  -DNO_SECURE_DISCARD \
  -DDISABLE_HW_ID_MATCH_CHECK \
  -DDISABLE_ASHMEM_TRACKING

PRODUCT_GMS_CLIENTID_BASE := android-agold
LINEAGE_VERSION := 15.1
MTK_HARDWARE := true
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness
WITH_SU := true
BOARD_EGL_NEEDS_FNW := true
BOARD_EGL_NEEDS_HANDLE_VALUE := true
BOARD_VENDOR := MediaTek
BOARD_GPS_LIBRARIES := true
BOARD_MEDIATEK_USES_GPS := true
BOARD_USES_CYANOGEN_HARDWARE := true
BLOCK_BASED_OTA := false
BOARD_PROVIDES_RILD := true
BOARD_HAS_FLIPPED_SCREEN := true
BOARD_HARDWARE_CLASS += $(DEVICE_PATH)/cmhw
BOARD_USES_MTK_AUDIO := true
BOARD_RIL_CLASS := ../../../device/ulefone/t1/ril
BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_CONNECTIVITY_MODULE := conn_soc
BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_USES_METADATA_PARTITION := true
MTK_MMPROFILE_SUPPORT := true
USE_LEGACY_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1
PRODUCT_TAGS += dalvik.gc.type-precise
WITH_DEXPREOPT_PIC := true
USE_MINIKIN := true
MALLOC_SVELTE := true
CONFIG_NR_CPUS := 8
MTK_HARDWARE := true
SIM_COUNT := 2
USE_LIBC_SYSTEM_PROPERTIES := false
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/soc/11270000.usb3/musb-hdrc/gadget/lun%d/file
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
TARGET_PROVIDES_LIBLIGHT := true
TARGET_INCLUDE_PBBUILDER_SYMBOLS := true
TARGET_INCLUDE_VTMAL_SYMBOLS := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_INCLUDE_FINGERPRINT_SYMBOLS := true
TARGET_PROVIDES_INIT_RC := true
TARGET_OTA_ASSERT_DEVICE := t1,p15v57c2k_gq_tee,,
TARGET_KMODULES := true
TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop
TARGET_USES_OVERLAY := true

