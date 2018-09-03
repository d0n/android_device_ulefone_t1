PRODUCT_PACKAGES += \
  KeySwitch

PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/prebuilts/OTA-Updater-2.0.5.apk:system/app/OTA-Updater.apk

# Audio
PRODUCT_PACKAGES += \
  audio.a2dp.default \
  audio.usb.default \
  audio.r_submix.default \
  audio_policy.default \
  libaudio-resampler \
  libaudiopolicymanagerdefault \
  libmtk_symbols \
  libtinycompress \
  libtinyxml \
  tinymix

PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/configs/bluetooth/auto_pair_devlist.conf:system/etc/bluetooth/auto_pair_devlist.conf \
  $(LOCAL_PATH)/configs/bluetooth/bt_stack.conf.debug:system/etc/bluetooth/bt_stack.conf.debug \
  $(LOCAL_PATH)/configs/bluetooth/bt_did.conf:system/etc/bluetooth/bt_did.conf \
  $(LOCAL_PATH)/configs/bluetooth/bt_stack.conf:system/etc/bluetooth/bt_stack.conf \
  $(LOCAL_PATH)/configs/bluetooth/bt_stack.conf.sqc:system/etc/bluetooth/bt_stack.conf.sqc

# Camera
PRODUCT_PACKAGES += \
  Snap \
  mtkcamera_parameters

# Camera properties
PRODUCT_PROPERTY_OVERRIDES += \
  camera2.portability.force_api=1

PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/camera/camerasize.xml:system/etc/camerasize.xml \
  $(LOCAL_PATH)/configs/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
  frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
  frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
  frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml

# Dalvik
PRODUCT_TAGS += dalvik.gc.type-precise
PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/configs/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf

# Fingerprint
PRODUCT_PACKAGES += \
  fingerprintd

PRODUCT_COPY_FILES += \
  frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

# FMRadio
PRODUCT_PACKAGES += \
  FMRadio

# Filesystem management tools
PRODUCT_PACKAGES += \
  e2fsck \
  make_ext4fs \
  resize2fs \
  setup_fs

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# GPS library
PRODUCT_PACKAGES += \
  libcurl

# GPS
PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/configs/slp_conf:system/etc/slp_conf \
  $(LOCAL_PATH)/configs/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml \
  frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml

# Hardware-specific features
PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/configs/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml \
  frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
  frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
  frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
  frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
  frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
  frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
  frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
  frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
  frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
  frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
  frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
  frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Keyboard layout
PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/configs/keylayout/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl \
  $(LOCAL_PATH)/configs/keylayout/ACCDET.kl:system/usr/keylayout/ACCDET.kl \
  $(LOCAL_PATH)/configs/keylayout/Generic.kl:system/usr/keylayout/Generic.kl

# Keyhandler
# PRODUCT_PACKAGES += \
#  com.cyanogenmod.keyhandler
#
# PRODUCT_SYSTEM_SERVER_JARS += com.cyanogenmod.keyhandler
#
# Never dexopt the keyhandler
# $(call add-product-dex-preopt-module-config,com.cyanogenmod.keyhandler,disable)
# Lights
PRODUCT_PACKAGES += \
  lights.mt6757

# Media
PRODUCT_COPY_FILES += \
  frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
  frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
  frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
  $(LOCAL_PATH)/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
  $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
  $(LOCAL_PATH)/configs/media_codecs_mediatek_audio.xml:system/etc/media_codecs_mediatek_audio.xml \
  $(LOCAL_PATH)/configs/media_codecs_mediatek_video.xml:system/etc/media_codecs_mediatek_video.xml \
  $(LOCAL_PATH)/configs/mtk_omx_core.cfg:system/etc/mtk_omx_core.cfg \
  $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# Charger
PRODUCT_PACKAGES += \
  charger

# Ramdisk
PRODUCT_PACKAGES += \
  enableswap.sh \
  factory_init.project.rc \
  factory_init.rc \
  fstab.mt6757 \
  init.aee.rc \
  init.common_svc.rc \
  init.connectivity.rc \
  init.environ.rc \
  init.microtrust.rc \
  init.modem.rc \
  init.mt6757.rc \
  init.mt6757.usb.rc \
  init.project.rc \
  init.recovery.mt6757.rc \
  init.rilproxy.rc \
  init.sensor.rc \
  init.usb.configfs.rc \
  init.usb.rc \
  init.volte.rc \
  init.zygote32.rc \
  init.zygote64_32.rc \
  meta_init.connectivity.rc \
  meta_init.modem.rc \
  meta_init.project.rc \
  meta_init.rc \
  multi_init.rc \
  recovery.fstab \
  ueventd.mt6757.rc \
  ueventd.rc \
  init.epdg.rc

# Properly input of int.rc
PRODUCT_COPY_FILES := \
  $(LOCAL_PATH)rootdir/enableswap.sh:recovery/root/enableswap.sh \
  $(LOCAL_PATH)rootdir/factory_init.connectivity.rc:recovery/root/factory_init.connectivity.rc \
  $(LOCAL_PATH)rootdir/factory_init.project.rc:recovery/root/factory_init.project.rc \
  $(LOCAL_PATH)rootdir/factory_init.rc:recovery/root/factory_init.rc \
  $(LOCAL_PATH)rootdir/fstab.mt6757:recovery/root/fstab.mt6757 \
  $(LOCAL_PATH)rootdir/init.rc:recovery/root/init.rc \
  $(LOCAL_PATH)rootdir/init.recovery.mt6757.rc:recovery/root/init.recovery.mt6757.rc \
  $(LOCAL_PATH)rootdir/meta_init.connectivity.rc:recovery/root/meta_init.connectivity.rc \
  $(LOCAL_PATH)rootdir/meta_init.modem.rc:recovery/root/meta_init.modem.rc \
  $(LOCAL_PATH)rootdir/meta_init.project.rc:recovery/root/meta_init.project.rc \
  $(LOCAL_PATH)rootdir/meta_init.rc:recovery/root/meta_init.rc \
  $(LOCAL_PATH)rootdir/multi_init.rc:recovery/root/multi_init.rc \
  $(LOCAL_PATH)rootdir/recovery.fstab:recovery/root/recovery.fstab \
  $(LOCAL_PATH)rootdir/ueventd.mt6757.rc:recovery/root/ueventd.mt6757.rc \
  $(LOCAL_PATH)rootdir/ueventd.rc:recovery/root/ueventd.rc \
  $(LOCAL_PATH)/rootdir/etc/init.rc:root/init.rc

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
  ro.telephony.ril_class=MT6757 \
  ro.telephony.ril.config=fakeiccid

# Sensors
PRODUCT_COPY_FILES += \
  frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
  frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
  frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
  frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
  frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
  frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
  frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml

# Telecomm
PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/configs/ecc_list.xml:system/etc/ecc_list.xml \
  $(LOCAL_PATH)/configs/spn-conf.xml:system/etc/spn-conf.xml

# Telephony
SIM_COUNT := 2
PRODUCT_PROPERTY_OVERRIDES += ro.telephony.sim.count=$(SIM_COUNT)

# USB
PRODUCT_PACKAGES += \
  librs_jni \
  com.android.future.usb.accessory
PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6c.conf:system/etc/wide-dhcpv6/dhcp6c.conf \
  $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6c.script:system/etc/wide-dhcpv6/dhcp6c.script \
  $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6cctlkey:system/etc/wide-dhcpv6/dhcp6cctlkey \
  $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6cDNS.conf:system/etc/wide-dhcpv6/dhcp6cDNS.conf \
  $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6s.conf:system/etc/wide-dhcpv6/dhcp6s.conf
