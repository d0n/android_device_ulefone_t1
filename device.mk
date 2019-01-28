LOCAL_PATH := device/ulefone/t1

include $(LOCAL_PATH)/BoardConfig.mk

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := xxxhdpi xxhdpi xhdpi hdpi normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Manifest
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/manifest.xml:system/vendor/manifest.xml

# Lights
PRODUCT_PACKAGES += \
    lights.mt6757

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_device.xml:system/vendor/etc/audio_device.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:system/vendor/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/a2dp_audio_policy_configuration.xml:/system/vendor/etc/a2dp_audio_policy_configuration.xml

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/vendor/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_mediatek_video.xml:system/vendor/etc/media_codecs_mediatek_video.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:system/vendor/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/vendor/etc/media_profiles.xml

# Recovery
PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/rootdir/enableswap.sh:root/enableswap.sh \
  $(LOCAL_PATH)/rootdir/disableswap.sh:root/disableswap.sh \
  $(LOCAL_PATH)/rootdir/mkshrc:root/etc/mkshrc \
  $(LOCAL_PATH)/rootdir/mtkshim.sh:root/mtkshim.sh \
  $(LOCAL_PATH)/rootdir/factory_init.project.rc:root/factory_init.project.rc \
  $(LOCAL_PATH)/rootdir/factory_init.rc:root/factory_init.rc \
  $(LOCAL_PATH)/rootdir/meta_init.connectivity.rc:root/meta_init.connectivity.rc \
  $(LOCAL_PATH)/rootdir/meta_init.modem.rc:root/meta_init.modem.rc \
  $(LOCAL_PATH)/rootdir/meta_init.project.rc:root/meta_init.project.rc \
  $(LOCAL_PATH)/rootdir/meta_init.rc:root/meta_init.rc \
  $(LOCAL_PATH)/rootdir/multi_init.rc:root/multi_init.rc \
  $(LOCAL_PATH)/rootdir/factory_init.connectivity.rc:root/factory_init.connectivity.rc \
  $(LOCAL_PATH)/rootdir/fstab.mt6757:root/fstab.mt6757 \
  $(LOCAL_PATH)/rootdir/init.rc:root/init.rc \
  $(LOCAL_PATH)/rootdir/init.mal.rc:root/init.mal.rc \
  $(LOCAL_PATH)/rootdir/init.wod.rc:root/init.wod.rc \
  $(LOCAL_PATH)/rootdir/init.aee.rc:root/init.aee.rc \
  $(LOCAL_PATH)/rootdir/init.connectivity.rc:root/init.connectivity.rc \
  $(LOCAL_PATH)/rootdir/init.common_svc.rc:root/init.common_svc.rc \
  $(LOCAL_PATH)/rootdir/init.epdg.rc:root/init.epdg.rc \
  $(LOCAL_PATH)/rootdir/init.fingerprint.rc:root/init.fingerprint.rc \
  $(LOCAL_PATH)/rootdir/init.modem.rc:root/init.modem.rc \
  $(LOCAL_PATH)/rootdir/init.mt6757.rc:root/init.mt6757.rc \
  $(LOCAL_PATH)/rootdir/init.mt6757.usb.rc:root/init.mt6757.usb.rc \
  $(LOCAL_PATH)/rootdir/init.project.rc:root/init.project.rc \
  $(LOCAL_PATH)/rootdir/init.rilproxy.rc:root/init.rilproxy.rc \
  $(LOCAL_PATH)/rootdir/init.sensor.rc:root/init.sensor.rc \
  $(LOCAL_PATH)/rootdir/init.trustkernel.rc:root/init.trustkernel.rc \
  $(LOCAL_PATH)/rootdir/init.volte.rc:root/init.volte.rc \
  $(LOCAL_PATH)/rootdir/ueventd.mt6757.rc:root/ueventd.mt6757.rc \
  $(LOCAL_PATH)/recovery/init.recovery.mt6757.rc:root/init.recovery.mt6757.rc \
  $(LOCAL_PATH)/recovery/ueventd.mt6757.rc:recovery/root/ueventd.mt6757.rc \
  $(LOCAL_PATH)/recovery/etc/twrp.fstab:recovery/root/etc/twrp.fstab \
  $(LOCAL_PATH)/recovery/mkshrc:recovery/root/etc/mkshrc

# TWRP
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/recovery/etc/twrp.fstab:recovery/root/etc/twrp.fstab

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

GAPPS_VARIANT := nano

APPS_PRODUCT_PACKAGES += \
  CMAudioFX \
  CMParts \
  CalculatorGoogle \
  CarrierServices \
  ClockGoogle \
  Chrome \
  CameraGoogle \
  PrebuiltGmsCore \
  DialerFramework \
  DialerGoogle \
  ExchangeGoogle \
  GCS \
  Maps \
  Translate \
  Velvet
#
APPS_EXCLUDED_PACKAGES := \
  Wellbeing \
  YouTube \
  TagGoogle \
  GoogleNow \
  Hangouts \
  GooglePlus \
  Search

PRODUCT_COPY_FILES += \
  frameworks/native/data/etc/android.software.webview.xml:system/etc/permissions/android.software.webview.xml

PRODUCT_COPY_FILES += \
  frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
  frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
  frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml

PRODUCT_COPY_FILES += \
  frameworks/native/data/etc/android.software.webview.xml:system/etc/permissions/android.software.webview.xml

# Dalvik/HWUI
$(call inherit-product, frameworks/native/build/phone-xxxhdpi-3072-dalvik-heap.mk)

# Common stuff
$(call inherit-product, vendor/mediatek/config/common.mk)

# Vendor
$(call inherit-product, vendor/ulefone/t1/t1-vendor.mk)
