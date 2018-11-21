# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio_policy.default \
    libaudio-resampler \
    libtinyalsa \
    libaudiopolicymanagerdefault \
    libmtk_symbols \
    libtinycompress \
    libtinyxml \
    tinymix
# CM's Snap camera
PRODUCT_PACKAGES += \
	Snap
# Dalvik
PRODUCT_TAGS += dalvik.gc.type-precise
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
# GPS
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml

# The gps config appropriate for this device
#$(call inherit-product, device/common/gps/gps_us_supl.mk)

# GPS
PRODUCT_PACKAGES += \
  gps.mt6757 \
  libcurl \
  libepos \
  YGPS

PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/configs/gps/agps_profiles_conf2.xml:system/vendor/etc/agps_profiles_conf2.xml

# Hardware-specific permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# Keyboard layout
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/keylayout/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl \
	$(LOCAL_PATH)/configs/keylayout/ACCDET.kl:system/usr/keylayout/ACCDET.kl \
	$(LOCAL_PATH)/configs/keylayout/Generic.kl:system/usr/keylayout/Generic.kl

# Keyhandler
 PRODUCT_PACKAGES += \
	com.cyanogenmod.keyhandler

PRODUCT_SYSTEM_SERVER_JARS += com.cyanogenmod.keyhandler

# Never dexopt the keyhandler
$(call add-product-dex-preopt-module-config,com.cyanogenmod.keyhandler,disable)

# Lights
PRODUCT_PACKAGES += \
    lights.mt6757

# Media
PRODUCT_COPY_FILES += \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
	device/samsung/j7maxlte/configs/media_profiles.xml:system/etc/media_profiles.xml \
	device/samsung/j7maxlte/configs/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml

# Charger
PRODUCT_PACKAGES += \
	charger


# this is BRM release config
# you should migrate turnkey alps/device/mediatek/common/device.mk to this file in correct way

# VoLTE Process
PRODUCT_PACKAGES += Gba
PRODUCT_PACKAGES += volte_xdmc
PRODUCT_PACKAGES += volte_core
PRODUCT_PACKAGES += volte_ua
PRODUCT_PACKAGES += volte_stack
PRODUCT_PACKAGES += volte_imcb
PRODUCT_PACKAGES += libipsec_ims

# MAL
PRODUCT_PACKAGES += libmdfx
PRODUCT_PACKAGES += mtkmal
PRODUCT_PACKAGES += libmal_mdmngr
PRODUCT_PACKAGES += libmal_rilproxy
PRODUCT_PACKAGES += libmal_simmngr
PRODUCT_PACKAGES += libmal_datamngr
PRODUCT_PACKAGES += libmal_rds
PRODUCT_PACKAGES += libmal_epdga
PRODUCT_PACKAGES += libmal_imsmngr
PRODUCT_PACKAGES += libmal

PRODUCT_PACKAGES += volte_imsm
PRODUCT_PACKAGES += volte_imspa

#WVDRM_SUPPORT
  #both L1 and L3 library
  PRODUCT_PACKAGES += com.google.widevine.software.drm.xml
  PRODUCT_PACKAGES += com.google.widevine.software.drm
  PRODUCT_PACKAGES += libdrmmtkutil

  #Mock modular drm plugin for cts
  #both L1 and L3 library
  PRODUCT_PACKAGES += libwvdrmengine
  #package depended by libwvdrmengine
  PRODUCT_PACKAGES += libcdm
  PRODUCT_PACKAGES += libcdm_utils
  PRODUCT_PACKAGES += libwvlevel3
  PRODUCT_PACKAGES += libwvdrmcryptoplugin
  PRODUCT_PACKAGES += libwvdrmdrmplugin
  PRODUCT_PACKAGES += libcdm_protos
  #package depended by libdrmwvmplugin
  PRODUCT_PACKAGES += libdrmwvmcommon
  PRODUCT_PACKAGES += liboemcrypto_static


#MTK_AGPS_APP
  PRODUCT_PACKAGES += LocationEM2 \
                      mtk_agpsd \
                      libssladp

#TODO: libepos is built via MTK_GPS_SUPPORT
#   but we don't know how
  PRODUCT_PACKAGES += libepos

#TODO: check why jpeg library built in some case
  PRODUCT_PACKAGES += libSwJpgCodec
  PRODUCT_PACKAGES += libJpgDecDrv_plat
  PRODUCT_PACKAGES += libJpgDecPipe
  PRODUCT_PACKAGES += libmhalImageCodec
# RIL
PRODUCT_PACKAGES += \
    libccci_util \
    librilmtk \
    librilmtkmd2 \
    mtkrild \
    rilproxy

# Radio dependencies
PRODUCT_PACKAGES += \
  muxreport \
  terservice
# Sensors
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
	frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml
# Sensor Calibration
PRODUCT_PACKAGES += \
  libem_sensor_jni
  
# Telephony
SIM_COUNT := 2
PRODUCT_PROPERTY_OVERRIDES += ro.telephony.sim.count=$(SIM_COUNT)
PRODUCT_PROPERTY_OVERRIDES += persist.radio.default.sim=0
PRODUCT_PROPERTY_OVERRIDES += persist.radio.multisim.config=dsds
PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/configs/ecc_list.xml:system/vendor/etc/ecc_list.xml \
  $(LOCAL_PATH)/configs/spn-conf.xml:system/etc/spn-conf.xml \
  $(LOCAL_PATH)/configs/apns-conf.xml:system/etc/apns-conf.xml
# USB
PRODUCT_PACKAGES += \
	librs_jni \
	com.android.future.usb.accessory
