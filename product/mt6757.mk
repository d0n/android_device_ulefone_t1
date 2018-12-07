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

APPS_EXCLUDED_PACKAGES := \
  Wellbeing \
  YouTube \
  TagGoogle \
  GoogleNow \
  Hangouts \
  GooglePlus \
  Search

PRODUCT_PACKAGES += \
  libreadline \
  readline \
  libqemu_pipe \
  BackupRestoreConfirmation \
  DownloadProvider \
  HTMLViewer \
  KeySwitch \
  MediaProvider \
  PackageInstaller \
  SettingsProvider \
  Shell \
  Snap \
  EngineerMode \
  audio.a2dp.default \
  audio.r_submix.default \
  audio.usb.default \
  audio_policy.default \
  bash \
  bcc \
  bu \
  bwc \
  libshim_gui \
  libbwc \
  libepos \
  libvtmal \
  vtservice \
  libccci_util \
  droiddriver \
  hwcomposer.default \
  hwcomposer.mt6757 \
  com.android.server \
  com.android.future.usb.accessory \
  com.android.location.provider \
  com.android.location.provider.xml \
  com.android.media.remotedisplay \
  com.android.media.remotedisplay.xml \
  com.android.mediadrm.signer \
  com.android.mediadrm.signer.xml \
  drmserver \
  e2fsck \
  ethernet-service \
  framework-res \
  idmap \
  ims-common \
  installd \
  ip \
  ip-up-vpn \
  ip6tables \
  iptables \
  keystore \
  keystore.default \
  keystore.mt6757 \
  keystore.v1.trustkernel \
  libMtkOmxApeDec \
  libOpenMAXAL \
  libOpenSLES \
  libaudio-resampler \
  libbcc \
  libconnctrl \
  libcsm_data \
  libdatactrl \
  libdownmix \
  libdrmframework \
  libdrmframework_jni \
  libifaddrs \
  libffmpeg \
  libfilterfw \
  libfilterpack_facedetect \
  libfmcust \
  libfs_mgr \
  libged \
  libmdp \
  libgralloc \
  gralloc.mt6757 \
  libgralloc_extra \
  libgui \
  libgui_ext \
  libgui_mtk \
  libkeystore \
  libmtk_symbols \
  libpq \
  libsqlite_jni \
  libtinyalsa \
  libtinycompress \
  libtinyxml \
  libui \
  libctor \
  libui_ext \
  libui_mtk \
  libwilhelm \
  libwlparser \
  libperfservicenative \
  logd \
  make_ext4fs \
  mediatek-framework \
  mtkcamera_parameters \
  camera.mt6757 \
  memtrack.mt6757 \
  radio.mt6757 \
  vulkan.mt6757 \
  resize2fs \
  screencap \
  sensorservice \
  sgdisk \
  su \
  sh \
  tcmclient \
  telephony-common \
  tinymix \
  uiautomator \
  uncrypt \
  voip-common \
  vibrator.default \
  consumerir.mt6757 \
  audio.primary.mt6757 \
  webview \
  wifi-service \
  perfprofd \
  libccci_util \
  libbwc \
  libgralloc_extra \
  libMtkOmxApeDec \
  libdrmpassthruplugin \
  libfwdlockengine \
  libdrmutility \
  libdrmframework \
  libstagefrighthw \
  libepos \
  libifaddrs \
  libperfservicenative \
  libaudiopolicymanagerdefault \
  mtk_socket \
  agps

PRODUCT_COPY_FILES += \
  frameworks/native/data/etc/android.software.webview.xml:system/etc/permissions/android.software.webview.xml

# Camera properties
PRODUCT_PROPERTY_OVERRIDES += \
  camera2.portability.force_api=1

#PRODUCT_SYSTEM_SERVER_JARS += \
#  com.google.android.gms \
#  com.cyanogenmod.keyhandler

PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/configs/camerasize.xml:system/etc/camerasize.xml \
  $(LOCAL_PATH)/configs/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
  frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
  frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
  frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml

PRODUCT_COPY_FILES += \
  frameworks/native/data/etc/android.software.webview.xml:system/etc/permissions/android.software.webview.xml

PRODUCT_PACKAGES += \
  api-stubs \
  ds-static \
  conscrypt \
  conscrypt-host \
  libjavacrypto \
  libconscrypt_jni \
  libconscrypt_static \
  persistentdata \
  online-system-api-sdk \
  lib_driver_cmd_bcmdhd \
  libwifi-hal-mt66xx \
  lib_driver_cmd_mt66xx \
  xlibcamera_client_mtk \
  power.default \
  power.mt6757 \
  lights.default \
  lights.mt6757 \
  libbthost_if \
  libepos \
  libmedia_helper \
  libbt-mtk_cust \
  m4u_ut \
  m4u_it \
  libm4u \
  bwc \
  bwc_test \
  libbwc \
  gps.default \
  gps.mt6757 \
  libccci_util \
  radio.primary \
  radio.fm.mt6757 \
  libfmcust \
  Snap \
  agoldnvram \
  nvram_proximity \
  sensorservice \
  vold \
  libwvm \
  fingerprintd \
  wpa_cli \
  wpa_supplicant \
  securit_test \
  tee \
  teed \
  AudioSetParam \
  MPED \
  MtkCodecService \
  aal \
  aee \
  aee_archive \
  aee_core_forwarder \
  aee_dumpstate \
  akmd09911 \
  akmd8963 \
  akmd8975 \
  ami304d \
  atci_service \
  atcid \
  audiocmdservice_atci \
  autobt \
  autokd \
  batterywarning \
  bmm050d \
  boot_logo_updater \
  camtool \
  ccci_fsd \
  ccci_mdinit \
  charon \
  dhcp6c \
  dhcp6ctl \
  dhcp6s \
  dmlog \
  downloader \
  em_svr \
  emdlogger1 \
  emdlogger2 \
  emdlogger3 \
  emdlogger5 \
  epdg_wod \
  factory \
  flashlessd \
  fsck_msdos_mtk \
  framework \
  fuelgauged \
  fuelgauged_nvram \
  ged_srv \
  geomagneticd \
  gsm0710muxd \
  gsm0710muxdmd2 \
  ipsec \
  ipsec_mon \
  kpoc_charger \
  lcdc_screen_cap \
  libccu_bin.dm \
  libccu_bin.pm \
  lsm303md \
  magd \
  matv \
  vulkan \
  libvulkan \
  mbimd \
  mc6420d \
  md_ctrl \
  md_monitor \
  md_monitor_ctrl \
  mdlogger \
  memorydumper \
  memsicd \
  memsicd3416x \
  meta_tst \
  mfv_ut \
  mnld \
  mobile_log_d \
  mrdump_tool \
  msensord \
  mtk_agpsd \
  mtkmal \
  mtkrild \
  mtkrildmd2 \
  muxreport \
  netdiag \
  nvram_agent_binder \
  nvram_daemon \
  orientationd \
  perf_native_test \
  pq \
  program_binary_builder \
  program_binary_service \
  qmcX983d \
  radvd \
  resize_ext4 \
  rilproxy \
  rs2spir \
  rtt \
  s62xd \
  slpd \
  sn \
  spir2cl \
  spm_loader \
  starter \
  statusd \
  stp_dump3 \
  stroke \
  superumount \
  sysenv_daemon \
  terservice \
  tertestclient \
  thermal \
  thermal_manager \
  thermald \
  thermalindicator \
  thermalloadalgod \
  viaradiooptions \
  viarild \
  volte_imcb \
  volte_stack \
  volte_ua \
  vtservice \
  wfca \
  wifi2agps \
  wmt_concurrency \
  wmt_launcher \
  wmt_loader \
  wmt_loopback \
  lib_driver_cmd_mt66xx \
  libwpa_client \
  hostapd \
  wificond \
  wifilogd \
  Open-TEE \
  opentee-engine \
  wpa_supplicant \
  audio.a2dp.default \
  audio.usb.default \
  audio.r_submix.default \
  audio_policy.default \
  libaudio-resampler \
  libaudiopolicymanagerdefault \
  libmtk_symbols \
  libtinycompress \
  libtinyxml \
  tinymix \

# Fingerprint
PRODUCT_PACKAGES += \
  fingerprintd \
  fingerprint.default \
  hwcomposer.default

PRODUCT_COPY_FILES += \
  frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

# FMRadio
PRODUCT_PACKAGES += \
  libfmjni \
  FMRadio \
  fmradio.mt6757

# Filesystem management tools
PRODUCT_PACKAGES += \
  e2fsck \
  make_ext4fs \
  resize2fs \
  setup_fs \
  libxml2 \
  libteec \
  libteecjni \
  libteeclientjni

# GPS
PRODUCT_COPY_FILES += \
  frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml

# The gps config appropriate for this device
#$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# GPS
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# GPS library
PRODUCT_PACKAGES += \
    libcurl

# GPS
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml


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
  $(LOCAL_PATH)/configs/keylayout/ACCDET.kl:system/usr/keylayout/ACCDET.kl \
  $(LOCAL_PATH)/configs/keylayout/Generic.kl:system/usr/keylayout/Generic.kl

# Lights
PRODUCT_PACKAGES += \
  rilproxy-mal \
  libdatactrl \
  libcsm_data \
  lights.mt6757

# Media
PRODUCT_PACKAGES += \
  libmedia \
  libmedia_jni

PRODUCT_COPY_FILES += \
  frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
  frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
  frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
  $(LOCAL_PATH)/configs/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \
  $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Charger
PRODUCT_PACKAGES += \
  charger

# Recovery
#PRODUCT_COPY_FILES += \
#  $(LOCAL_PATH)/rootdir/recovery.fstab:root/etc/recovery.fstab
#  $(LOCAL_PATH)/rootdir/factory_init.connectivity.rc:recovery/root/factory_init.connectivity.rc \
#  $(LOCAL_PATH)/rootdir/factory_init.project.rc:recovery/root/factory_init.project.rc \
#  $(LOCAL_PATH)/rootdir/factory_init.rc:recovery/root/factory_init.rc \
#  $(LOCAL_PATH)/rootdir/init.recovery.mt6757.rc:recovery/root/init.recovery.mt6757.rc \
#  $(LOCAL_PATH)/rootdir/etc/meta_init.connectivity.rc:recovery/root/meta_init.connectivity.rc \
#  $(LOCAL_PATH)/rootdir/etc/meta_init.modem.rc:recovery/root/meta_init.modem.rc \
#  $(LOCAL_PATH)/rootdir/etc/meta_init.project.rc:recovery/root/meta_init.project.rc \
#  $(LOCAL_PATH)/rootdir/etc/meta_init.rc:recovery/root/meta_init.rc \
#  $(LOCAL_PATH)/rootdir/etc/multi_init.rc:recovery/root/multi_init.rc \
#  $(LOCAL_PATH)/rootdir/etc/ueventd.mt6757.rc:recovery/root/ueventd.mt6757.rc \

# Ramdisks
PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/rootdir/enableswap.sh:root/enableswap.sh \
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
  $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab \
  bionic/libc/zoneinfo/tzdata:system/usr/share/zoneinfo/tzdata

# Sepolicy
BOARD_SEPOLICY_DIRS := \
  $(LOCAL_PATH)/sepolicy
BOARD_SECCOMP_POLICY := \
  $(LOCAL_PATH)/seccomp

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

PRODUCT_PACKAGES += volte_imsm
PRODUCT_PACKAGES += volte_imspa

#WVDRM_SUPPORT
#both L1 and L3 library
PRODUCT_PACKAGES += com.google.widevine.software.drm.xml
PRODUCT_PACKAGES += com.google.widevine.software.drm

#Mock modular drm plugin for cts
#both L1 and L3 library
PRODUCT_PACKAGES += libwvdrmengine
PRODUCT_PACKAGES += libcdm
PRODUCT_PACKAGES += libcdm_utils
PRODUCT_PACKAGES += libwvlevel3
PRODUCT_PACKAGES += libwvdrmcryptoplugin
PRODUCT_PACKAGES += libwvdrmdrmplugin
PRODUCT_PACKAGES += libcdm_protos
PRODUCT_PACKAGES += libdrmwvmcommon
PRODUCT_PACKAGES += liboemcrypto_static
PRODUCT_PACKAGES += libion
PRODUCT_PACKAGES += libion_mtk
PRODUCT_PACKAGES += fmradio

#MTK_AGPS_APP
PRODUCT_PACKAGES += \
  LocationEM2 \
  mtk_agpsd \
  libssladp

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

# ART.
PRODUCT_PACKAGES += art-runtime

# ART/dex helpers.
PRODUCT_PACKAGES += art-tools

PRODUCT_PACKAGES += libmtk_symbols

# Certificates.
PRODUCT_PACKAGES += \
  cacerts \

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
  frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml

# Sensor Calibration
PRODUCT_PACKAGES += \
  libem_sensor_jni

# Telephony
PRODUCT_PACKAGES += \
  librs_jni \
  com.android.future.usb.accessor
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := device/ulefone/t1

TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
    wifi2agps \
    wmt_loader

$(call inherit-product, device/common/gps/gps_us_supl.mk)

PRODUCT_PACKAGES += \
    md_ctrl

# Charger Mode
PRODUCT_PACKAGES += \
    charger_res_images

