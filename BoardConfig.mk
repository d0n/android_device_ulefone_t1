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
MTK_PROJECT := p15v57c2k_gq_tee
MTK_PROJECT_NAME := EVEN6753_65C_L1
MTK_PLATFORM := MT6757
MTK_BASE_PROJECT := mt6757
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
  -DCOMPAT_SENSORS_M \
  -DNO_SECURE_DISCARD \
  -DDISABLE_HW_ID_MATCH_CHECK

TARGET_LDPRELOAD += \
  GLESv3 \
  mtk-ril.so \
  mtk-rilmd2.so \
  mtk-rilproxy.so \
  volte_imsm.so \
  libmtk_vt_service.so \
  gps.mt6757.so \
  libviagpsrpc.so

#BOARD_EGL_WORKAROUND_BUG_10194508 := true
#BOARD_USES_LEGACY_MTK_AV_BLOB := true
#TARGET_HAS_LEGACY_CAMERA_HAL1 := true
BOARD_VENDOR := Ulefone
#BOARD_USES_ALSA_AUDIO := true
BOARD_GPS_LIBRARIES := true
BOARD_MEDIATEK_USES_GPS := true
BOARD_USES_CYANOGEN_HARDWARE := true
#BOARD_CHARGER_DISABLE_INIT_BLANK := true
BOARD_CHARGER_ENABLE_SUSPEND := true
BLOCK_BASED_OTA := false
BOARD_EGL_NEEDS_HANDLE_VALUE := true
BOARD_PROVIDES_RILD := true
BOARD_EGL_NEEDS_FNW := true
BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
BOARD_HAS_FLIPPED_SCREEN := true
#BOARD_ROOT_EXTRA_FOLDERS := system/vendor/firmware
LOCAL_POST_INSTALL_CMD := ln -sf /system/vendor/etc/firmware $(TARGET_ROOT_OUT)/system/vendor/firmware;
BOARD_EGL_CFG := $(DEVICE_PATH)/configs/egl.cfg
BOARD_HARDWARE_CLASS += $(DEVICE_PATH)/cmhw

#MTK_OPEN_PACKAGE := true
MTK_K64_SUPPORT := yes
#MTK_BTCODEGEN_SUPPORT := no
#MTK_TC1_FEATURE := true
#GOOGLE_RELEASE_RIL := no
#BOARD_USES_AOSP_GPS_HAL := true
#EXTENDED_FONT_FOOTPRINT := true
#DONT_DEXPREOPT_PRBUILTS := true
#MTK_MMPROFILE_SUPPORT := true
#MTK_FM_RX_SUPPORT := yes
#FM_LIB_BUILD_MT6625 := yes
#USE_CUSTOM_AUDIO_POLICY := 1
#USE_LEGACY_AUDIO_POLICY := 1
#MTK_FM_SUPPORT := yes
PRODUCT_TAGS += dalvik.gc.type-precise
#USE_MINIKIN := true
#MALLOC_SVELTE := true
MTK_SVLTE_SUPPORT := yes
ADD_RADIO_FILES := true
#WITH_DEXPREOPT_PIC := true
WITH_DEXPREOPT := true
CONFIG_NR_CPUS := 8
MTK_HARDWARE := true
USE_XML_AUDIO_POLICY_CONF := 1

#TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
#TARGET_BOARD_KERNEL_HEADERS := $(DEVICE_PATH)/include
#TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_t1
#TARGET_RELEASETOOLS_EXTENSIONS := device/ulefone/t1
#TARGET_INCLUDE_UI_SYMBOLS := true
#TARGET_INCLUDE_MEDIAJNI_SYMBOLS := true
TARGET_INCLUDE_XLOG_SYMBOLS := true
TARGET_INCLUDE_GUI_SYMBOLS := true
TARGET_INCLUDE_CAMERA_SYMBOLS := true
TARGET_INCLUDE_GPS_SYMBOLS := true
TARGET_INCLUDE_AUDIO_SYMBOLS := true
TARGET_INCLUDE_PARCEL_SYMBOLS := true
TARGET_INCLUDE_PBBUILDER_SYMBOLS := true
TARGET_INCLUDE_VTMAL_SYMBOLS := true
TARGET_PROVIDES_INIT_RC := true
TARGET_CPU_MEMCPY_OPT_DISABLE := true
TARGET_TEE_IS_OPTEE := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true
TARGET_PROVIDES_KEYMASTER := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
TARGET_OTA_ASSERT_DEVICE := t1,p15v57c2k_gq_tee,,
TARGET_KMODULES := true
TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop
TARGET_USES_OVERLAY := true
DEVICE_PACKAGE_OVERLAYS := $(DEVICE_PATH)/overlay

PRODUCT_PROPERTY_OVERRIDES := \
  $(shell cat $(DEVICE_PATH)/sysprops.lst)

ADDITIONAL_BUILD_PROPERTIES := \
  $(shell cat $(DEVICE_PATH)/sysprops.lst)

PRODUCT_PROPERTY_OVERRIDES := \
  $(shell cat $(DEVICE_PATH)/sysprops.lst)

PRODUCT_DEFAULT_PROPERTY_OVERRIDES := \
  $(shell cat $(DEVICE_PATH)/sysprops.lst)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES := \
  $(shell cat $(DEVICE_PATH)/sysprops.lst)

ADDITIONAL_DEFAULT_PROPERTIES := \
  $(shell cat $(DEVICE_PATH)/sysprops.lst)

