#
# Copyright (C) 2015-2016 The CyanogenMod Project
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

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi 480dpi hdpi tvdpi mdpi ldpi

# Device specific overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Device product elements
include $(LOCAL_PATH)/product/*.mk

# Keyhandler package
PRODUCT_PACKAGES += \
    com.cyanogenmod.keyhandler

PRODUCT_SYSTEM_SERVER_JARS += com.cyanogenmod.keyhandler

# Dalvik heap configurations
$(call inherit-product-if-exists, frameworks/native/build/phone-xxxhdpi-4096-dalvik-heap.mk)

# Call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxxhdpi-4096-hwui-memory.mk)

$(call add-product-dex-preopt-module-config,com.cyanogenmod.keyhandler,disable)
# Product common configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Vendor product configurations
$(call inherit-product-if-exists, vendor/ulefone/t1/t1-vendor.mk)

ADDITIONAL_DEFAULT_PROPERTIES += \
<<<<<<< HEAD
	ro.secure=0 \
	ro.allow.mock.location=1 \
	ro.debuggable=1 \
	ro.adb.secure=0 \
	persist.service.acm.enable=0 \
	persist.service.adb.enable=1 \
	ro.oem_unlock_supported=1 \
	ro.mount.fs=EXT4 \
	camera.disable_zsl_mode=1
||||||| merged common ancestors
	ro.secure=0 \
	ro.allow.mock.location=1 \
	ro.debuggable=1 \
	ro.adb.secure=0 \
	persist.service.acm.enable=0 \
	ro.oem_unlock_supported=1 \
	ro.mount.fs=EXT4 \
	camera.disable_zsl_mode=1
=======
  ro.adb.secure=0 \
  ro.oem_unlock_supported=1 \
  persist.radio.lte.chip=0 \
  ro.secure=0 \
  security.perf_harden=0 \
  ro.allow.mock.location=1 \
  ro.debuggable=1 \
  ro.zygote=zygote64_32 \
  pm.dexopt.first-boot=interpret-only \
  pm.dexopt.boot=verify-profile \
  pm.dexopt.install=interpret-only \
  pm.dexopt.bg-dexopt=speed-profile \
  pm.dexopt.ab-ota=speed-profile \
  pm.dexopt.nsys-library=speed \
  pm.dexopt.shared-apk=speed \
  pm.dexopt.forced-dexopt=speed \
  pm.dexopt.core-app=speed \
  dalvik.vm.image-dex2oat-Xms=64m \
  dalvik.vm.image-dex2oat-Xmx=64m \
  dalvik.vm.dex2oat-Xms=64m \
  dalvik.vm.dex2oat-Xmx=512m \
  ro.dalvik.vm.native.bridge=0 \
  dalvik.vm.usejit=true \
  dalvik.vm.usejitprofiles=true \
  dalvik.vm.appimageformat=lz4 \
  debug.atrace.tags.enableflags=1 \
  persist.service.adb.enable=1 \
  persist.service.debuggable=1 \
  persist.sys.usb.config=mtp,adb \
  ro.mount.fs=EXT4 \
  camera.disable_zsl_mode=1
>>>>>>> 96eaa590f4497496661f9ddd2e74052698823cdc
