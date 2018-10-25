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
#USE_NINJA := false
DEVICE_PATH := device/$(VENDOR)/$(DEVICE)
MTK_PATH_SOURCE := vendor/mediatek/proprietary
MTK_ROOT := $(MTK_PATH_SOURCE)
MTK_PROJECT_CONFIG := $(DEVICE_PATH)/ProjectConfig.mk
MTK_PATH_CUSTOM_PLATFORM := mt6757
include $(DEVICE_PATH)/PlatformConfig.mk
include $(DEVICE_PATH)/board/mt6757.mk
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

LOCAL_LDLIBS := -lGLESv3
#BOARD_EGL_WORKAROUND_BUG_10194508 := true
#BOARD_USES_LEGACY_MTK_AV_BLOB := true
#TARGET_HAS_LEGACY_CAMERA_HAL1 := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BLOCK_BASED_OTA := false
BOARD_USES_ALSA_AUDIO := true
BOARD_EGL_NEEDS_HANDLE_VALUE := true
BOARD_PROVIDES_RILD := true
BOARD_EGL_NEEDS_FNW := true
BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
BOARD_HAS_FLIPPED_SCREEN := true
BOARD_EGL_CFG := $(DEVICE_PATH)/configs/egl.cfg

#PRODUCT_TREBLE_LINKER_NAMESPACES_OVERRIDE := false
#USE_CUSTOM_AUDIO_POLICY := 1
#USE_XML_AUDIO_POLICY_CONF := 1
DONT_DEXPREOPT_PRBUILTS := false
WITH_DEXPREOPT_PIC := true
WITH_DEXPREOPT := true
ANDROID_MULTI_SIM := true
EXTENDED_FONT_FOOTPRINT := true
PRODUCT_TAGS += dalvik.gc.type-precise
CONFIG_NR_CPUS := 8
MTK_AAL_SUPPORT := yes
MTK_MMPROFILE_SUPPORT := true
MTK_FM_RX_SUPPORT := yes
FM_LIB_BUILD_MT6625 := yes
MTK_HARDWARE := true
MTK_FM_SUPPORT := yes
MTK_TEE_SUPPORT := yes
MTK_VT3G324M_SUPPORT := yes

#TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
#TARGET_PROVIDES_INIT_RC := true
#TARGET_INCLUDE_XLOG_SYMBOLS := true
#TARGET_INCLUDE_AUDIO_SYMBOLS := true
#TARGET_INCLUDE_OMX_SYMBOLS := true
#TARGET_INCLUDE_GUI_SYMBOLS := true
#TARGET_INCLUDE_UI_SYMBOLS := true
#TARGET_INCLUDE_CAMERA_SYMBOLS := true
TARGET_INCLUDE_GPS_SYMBOLS := true
TARGET_CPU_MEMCPY_OPT_DISABLE := true
TARGET_TEE_IS_OPTEE := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true
TARGET_PROVIDES_KEYMASTER := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
TARGET_OTA_ASSERT_DEVICE := t1,p15v57c2k_gq_tee,,
TARGET_KMODULES := true
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop

PRODUCT_SYSTEM_DEFAULT_PROPERTIES := \
  dalvik.vm.image-dex2oat-Xms=64m \
  dalvik.vm.image-dex2oat-Xmx=64m \
  dalvik.vm.dex2oat-Xms=64m \
  dalvik.vm.dex2oat-Xmx=64m \
  dalvik.vm.heapgrowthlimit=256m \
  dalvik.vm.heapsize=512m \
  pm.dexopt.first-boot=interpret-only \
  pm.dexopt.boot=verify-profile \
  pm.dexopt.install=interpret-only \
  pm.dexopt.ab-ota=speed-profile \
  pm.dexopt.bg-dexopt=speed-profile \
  pm.dexopt.nsys-library=speed \
  pm.dexopt.forced-dexopt=speed \
  pm.dexopt.shared-apk=speed \
  pm.dexopt.core-app=speed \
  ro.secure=0 \
  ro.debuggable=1 \
  ro.adb.secure=0 \
  persist.service.adb.enable=1 \
  persist.service.debuggable=1 \
  persist.sys.usb.config=mtp,adb \
  persist.sys.root_access=1 \
  ro.sys.usb.configfs=1 \
  ro.oem_unlock_supported=1 \
  security.perf_harden=0 \
  ro.allow.mock.location=1 \
  ro.debuggable=1 \
  ro.telephony.ril.config=fakeiccid \
  dalvik.vm.appimageformat=lz4 \
  ro.mount.fs=EXT4 \
  camera.disable_zsl_mode=1 \
  ro.dalvik.vm.native.bridge=0

PRODUCT_DEFAULT_PROPERTY_OVERRIDES := \
  dalvik.vm.image-dex2oat-Xms=64m \
  dalvik.vm.image-dex2oat-Xmx=64m \
  dalvik.vm.dex2oat-Xms=64m \
  dalvik.vm.dex2oat-Xmx=64m \
  dalvik.vm.heapgrowthlimit=256m \
  dalvik.vm.heapsize=512m \
  pm.dexopt.first-boot=interpret-only \
  pm.dexopt.boot=verify-profile \
  pm.dexopt.install=interpret-only \
  pm.dexopt.ab-ota=speed-profile \
  pm.dexopt.bg-dexopt=speed-profile \
  pm.dexopt.nsys-library=speed \
  pm.dexopt.forced-dexopt=speed \
  pm.dexopt.shared-apk=speed \
  pm.dexopt.core-app=speed \
  ro.secure=0 \
  ro.debuggable=1 \
  ro.adb.secure=0 \
  persist.service.adb.enable=1 \
  persist.service.debuggable=1 \
  persist.sys.usb.config=mtp,adb \
  persist.sys.root_access=1 \
  ro.sys.usb.configfs=1 \
  ro.oem_unlock_supported=1 \
  security.perf_harden=0 \
  ro.allow.mock.location=1 \
  ro.debuggable=1 \
  ro.telephony.ril.config=fakeiccid

PRODUCT_SYSTEM_DEFAULT_PROPERTIES := \
  dalvik.vm.image-dex2oat-Xms=64m \
  dalvik.vm.image-dex2oat-Xmx=64m \
  dalvik.vm.dex2oat-Xms=64m \
  dalvik.vm.dex2oat-Xmx=64m \
  dalvik.vm.heapgrowthlimit=256m \
  dalvik.vm.heapsize=512m \
  pm.dexopt.first-boot=interpret-only \
  pm.dexopt.boot=verify-profile \
  pm.dexopt.install=interpret-only \
  pm.dexopt.ab-ota=speed-profile \
  pm.dexopt.bg-dexopt=speed-profile \
  pm.dexopt.nsys-library=speed \
  pm.dexopt.forced-dexopt=speed \
  pm.dexopt.shared-apk=speed \
  pm.dexopt.core-app=speed \
  ro.secure=0 \
  ro.debuggable=1 \
  ro.adb.secure=0 \
  persist.service.adb.enable=1 \
  persist.service.debuggable=1 \
  persist.sys.usb.config=mtp,adb \
  persist.sys.root_access=1 \
  ro.sys.usb.configfs=1 \
  ro.oem_unlock_supported=1 \
  security.perf_harden=0 \
  ro.allow.mock.location=1 \
  ro.debuggable=1 \
  ro.telephony.ril.config=fakeiccid

PRODUCT_SYSTEM_DEFAULT_PROPERTIES := \
  dalvik.vm.image-dex2oat-Xms=64m \
  dalvik.vm.image-dex2oat-Xmx=64m \
  dalvik.vm.dex2oat-Xms=64m \
  dalvik.vm.dex2oat-Xmx=64m \
  dalvik.vm.heapgrowthlimit=256m \
  dalvik.vm.heapsize=512m \
  pm.dexopt.first-boot=interpret-only \
  pm.dexopt.boot=verify-profile \
  pm.dexopt.install=interpret-only \
  pm.dexopt.ab-ota=speed-profile \
  pm.dexopt.bg-dexopt=speed-profile \
  pm.dexopt.nsys-library=speed \
  pm.dexopt.forced-dexopt=speed \
  pm.dexopt.shared-apk=speed \
  pm.dexopt.core-app=speed \
  ro.secure=0 \
  ro.debuggable=1 \
  ro.adb.secure=0 \
  persist.service.adb.enable=1 \
  persist.service.debuggable=1 \
  persist.sys.usb.config=mtp,adb \
  persist.sys.root_access=1 \
  ro.sys.usb.configfs=1 \
  ro.oem_unlock_supported=1 \
  security.perf_harden=0 \
  ro.allow.mock.location=1 \
  ro.debuggable=1 \
  ro.telephony.ril.config=fakeiccid

ADDITIONAL_DEFAULT_PROPERTIES := \
  dalvik.vm.image-dex2oat-Xms=64m \
  dalvik.vm.image-dex2oat-Xmx=64m \
  dalvik.vm.dex2oat-Xms=64m \
  dalvik.vm.dex2oat-Xmx=64m \
  dalvik.vm.heapgrowthlimit=256m \
  dalvik.vm.heapsize=512m \
  pm.dexopt.first-boot=interpret-only \
  pm.dexopt.boot=verify-profile \
  pm.dexopt.install=interpret-only \
  pm.dexopt.ab-ota=speed-profile \
  pm.dexopt.bg-dexopt=speed-profile \
  pm.dexopt.nsys-library=speed \
  pm.dexopt.forced-dexopt=speed \
  pm.dexopt.shared-apk=speed \
  pm.dexopt.core-app=speed \
  ro.secure=0 \
  ro.debuggable=1 \
  ro.adb.secure=0 \
  persist.service.adb.enable=1 \
  persist.service.debuggable=1 \
  persist.sys.usb.config=mtp,adb \
  persist.sys.root_access=1 \
  ro.sys.usb.configfs=1 \
  ro.oem_unlock_supported=1 \
  security.perf_harden=0 \
  ro.allow.mock.location=1 \
  ro.debuggable=1 \
  ro.telephony.ril.config=fakeiccid
