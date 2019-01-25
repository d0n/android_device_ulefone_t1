LOCAL_PATH := device/ulefone/t1

include $(LOCAL_PATH)/BoardConfig.mk

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := xxhdpi xhdpi hdpi normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

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
  $(LOCAL_PATH)/recovery/etc/twrp.fstab:recovery/root/etc/twrp.fstab

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
#APPS_EXCLUDED_PACKAGES := \
#  Wellbeing \
#  YouTube \
#  TagGoogle \
#  GoogleNow \
#  Hangouts \
#  GooglePlus \
#  Search

PRODUCT_PACKAGES += \
  AdupsFota \
  AdupsFotaReboot \
  AgingTest \
  AgoldApnInfoCollector \
  AgoldCompass \
  AgoldNetworkmanager \
  AguiAccAndAlspsCalibration \
  AosGpsTracker \
  BasicDreams \
  Bluetooth \
  BluetoothMidiService \
  BookmarkProvider \
  CaptivePortalLogin \
  CertInstaller \
  CtsShimPrebuilt \
  DeskClock \
  Devicemessages114 \
  Devicemessages118 \
  DownloadProviderUi \
  Drive \
  Duo \
  EasterEgg \
  ExactCalculator \
  GBoard \
  IMEIApp \
  KW_BeautySnap \
  KeyChain \
  LatinImeGoogle \
  PacProcessor \
  ScreenCapture \
  SoundRecorder \
  UserDictionaryProvider \
  WebViewGoogle \
  agold.AgoldFactoryTest \
  t6 \
  libreadline \
  readline \
  libqemu_pipe \
  BackupRestoreConfirmation \
  DownloadProvider \
  HTMLViewer \
  GmsCore \
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
  busybox \
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
  fs_mgr \
  sdcard \
  libsdcard \
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

PRODUCT_COPY_FILES += \
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
  magisk \
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
  libdng_sdk \
  libm \
  libLLVM \
  libcamera_metadata \
  libradio_metadata \
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
  tinymix

# Dalvik/HWUI
$(call inherit-product, frameworks/native/build/phone-xxxhdpi-3072-dalvik-heap.mk)

# Common stuff
$(call inherit-product, vendor/mediatek/config/common.mk)

# Vendor
$(call inherit-product, vendor/ulefone/t1/t1-vendor.mk)
