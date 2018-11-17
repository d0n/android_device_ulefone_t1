GAPPS_VARIANT := mini
GAPPS_FORCE_PACKAGE_OVERRIDES := true
GAPPS_PRODUCT_PACKAGES += \
  CMAudioFX \
  CameraGoogle \
  DialerGoogle \
  CarrierServices \
  DialerFramework \
  GCS

GAPPS_EXCLUDED_PACKAGES := \
  YouTube \
  TagGoogle \
  GoogleNow \
  Hangouts

PRODUCT_PACKAGES += \
  mrdump_tool \
  AudioSetParam \
  BackupRestoreConfirmation \
  DownloadProvider \
  FMRadio \
  Gba \
  HTMLViewer \
  KeySwitch \
  LocationEM2 \
  MPED \
  MediaProvider \
  MtkCodecService \
  PackageInstaller \
  SettingsProvider \
  Shell \
  Snap \
  YGPS \
  aal \
  aee \
  aee_archive \
  aee_core_forwarder \
  aee_dumpstate \
  agoldnvram \
  agps \
  agpsd \
  ahat \
  akmd09911 \
  akmd8963 \
  akmd8975 \
  ami304d \
  android.hardware.wifi@1.0-service \
  apache-xml \
  art-runtime \
  art-tools \
  atci_service \
  atcid \
  audio.a2dp.default \
  audio.r_submix.default \
  audio.usb.default \
  audio_policy.default \
  audiocmdservice_atci \
  autobt \
  autokd \
  bash \
  batterywarning \
  bcc \
  bmm050d \
  boot_logo_updater \
  bouncycastle \
  bu \
  bwc \
  bwc_test \
  cacerts \
  camtool \
  ccci_fsd \
  ccci_mdinit \
  charger \
  charon \
  com.android.future.usb.accessory \
  com.android.location.provider \
  com.android.location.provider.xml \
  com.android.media.remotedisplay \
  com.android.media.remotedisplay.xml \
  com.android.mediadrm.signer \
  com.android.mediadrm.signer.xml \
  com.google.android.gms \
  com.google.android.gsf \
  com.google.widevine.software.drm \
  com.google.widevine.software.drm.xml \
  conscrypt \
  core-junit \
  core-libart \
  dalvikvm \
  dex2oat \
  dexdeps \
  dexdump \
  dexlist \
  dhcp6c \
  dhcp6ctl \
  dhcp6s \
  display \
  dmlog \
  dmtracedump \
  downloader \
  drmserver \
  dx \
  e2fsck \
  em_svr \
  emdlogger1 \
  emdlogger2 \
  emdlogger3 \
  emdlogger5 \
  epdg_wod \
  ethernet-service \
  ext \
  factory \
  fingerprintd \
  flashlessd \
  fmradio \
  framework-res \
  fsck_msdos_mtk \
  fuelgauged \
  fuelgauged_nvram \
  ged_srv \
  geomagneticd \
  gps.mt6757 \
  gsm0710muxd \
  gsm0710muxdmd2 \
  gui_ext \
  hostapd \
  hprof-conv \
  idmap \
  ims-common \
  installd \
  ip \
  ip-up-vpn \
  ip6tables \
  ipsec \
  ipsec_mon \
  iptables \
  ConfigPanel \
  keystore \
  keystore.default \
  kpoc_charger \
  libaal \
  lcdc_screen_cap \
  libJpgDecDrv_plat \
  libJpgDecPipe \
  libMtkOmxApeDec \
  libOpenMAXAL \
  libOpenSLES \
  libSwJpgCodec \
  lib_driver_cmd_bcmdhd \
  lib_driver_cmd_mt66xx \
  libart \
  libaudio-resampler \
  libbcc \
  libbt-mtk_cust \
  libbthost_if \
  libbwc \
  libccci_util \
  libccu_bin.dm \
  libccu_bin.pm \
  libcdm \
  libcdm_protos \
  libcdm_utils \
  libconnctrl \
  libcrypto \
  libcsm_data \
  libctor \
  libcurl \
  libdatactrl \
  libdownmix \
  libdrmframework \
  libdrmframework_jni \
  libdrmwvmcommon \
  libem_sensor_jni \
  libepos \
  libexpat \
  libffmpeg \
  libfilterfw \
  libfilterpack_facedetect \
  libfmcust \
  libfmjni \
  libfs_mgr \
  libged \
  libgralloc \
  libgralloc_extra \
  libgui \
  libgui_ext \
  libgui_mtk \
  libicui18n \
  libicuuc \
  libifaddrs \
  libion \
  libion_mtk \
  libinput_evdev \
  input.evdev.default \
  libipsec_ims \
  libjavacore \
  libkeystore \
  libm4u \
  libmal_datamngr \
  libmal_epdga \
  libmal_imsmngr \
  libmal_mdmngr \
  libmal_rds \
  libmal_rilproxy \
  libmal_simmngr \
  libmdfx \
  libmdp \
  libmedia \
  libmedia_helper \
  libmedia_jni \
  libmhalImageCodec \
  libmtk_symbols \
  libnativehelper \
  libnvram \
  libaudiopolicymanager \
  liboemcrypto_static \
  libperfservicenative \
  libpq \
  librilmtk \
  librilmtkmd2 \
  librs_jni \
  libsqlite_jni \
  libssl \
  libssladp \
  libteec \
  libteecjni \
  libteeclientjni \
  libtinyalsa \
  libtinycompress \
  libtinyxml \
  libui \
  libui_ext \
  libui_mtk \
  libvtmal \
  libwifi-hal-mt66xx \
  libwilhelm \
  libwlparser \
  librecovery_updater_t1 \
  libwpa_client \
  libwvdrmcryptoplugin \
  libwvdrmdrmplugin \
  libwvdrmengine \
  libwvlevel3 \
  libxml2 \
  libz \
  lights.mt6757 \
  logd \
  lsm303md \
  libvt_custom \
  m4u_it \
  m4u_ut \
  magd \
  make_ext4fs \
  matv \
  mbimd \
  mc6420d \
  md_ctrl \
  md_monitor \
  md_monitor_ctrl \
  mdlogger \
  mediatek-framework \
  memorydumper \
  memsicd \
  memsicd3416x \
  meta_tst \
  mplugin \
  mfv_ut \
  mnld \
  mobile_log_d \
  msensord \
  mtk_agpsd \
  mtk-socket \
  mtk-rilproxy \
  mtkcamera_parameters \
  mtkmal \
  mtkrild \
  mtkrildmd2 \
  muxreport \
  netdiag \
  nvram_agent_binder \
  nvram_daemon \
  nvram_proximity \
  oatdump \
  okhttp \
  orientationd \
  patchoat \
  perf_native_test \
  perfprofd \
  power.mt6757 \
  pq \
  program_binary_builder \
  program_binary_service \
  qmcX983d \
  radio.fm.mt6757 \
  radvd \
  resize2fs \
  resize_ext4 \
  rilproxy \
  rilproxy-mal \
  rs2spir \
  rtt \
  s62xd \
  screencap \
  securit_test \
  sensorservice \
  setup_fs \
  sgdisk \
  slpd \
  sn \
  su \
  spir2cl \
  spm_loader \
  starter \
  statusd \
  stp_dump3 \
  stroke \
  superumount \
  sysenv_daemon \
  tcmclient \
  tee \
  teed \
  telephony-common \
  terservice \
  tertestclient \
  thermal \
  thermal_manager \
  thermald \
  thermalindicator \
  thermalloadalgod \
  tinymix \
  uiautomator \
  updater \
  uncrypt \
  viaradiooptions \
  viarild \
  voip-common \
  vold \
  volte_core \
  volte_imcb \
  volte_imsm \
  volte_imspa \
  volte_stack \
  volte_ua \
  volte_xdmc \
  vtservice \
  webview \
  wfca \
  wifi-service \
  wifi2agps \
  wificond \
  wifilogd \
  wmt_concurrency \
  wmt_launcher \
  wmt_loader \
  wmt_loopback \
  wpa_cli \
  wpa_supplicant \
  xlibcamera_client_mtk

PRODUCT_COPY_FILES += \
  frameworks/native/data/etc/android.software.webview.xml:system/etc/permissions/android.software.webview.xml

# Camera properties
PRODUCT_PROPERTY_OVERRIDES += \
  camera2.portability.force_api=1

PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/configs/camerasize.xml:system/etc/camerasize.xml \
  $(LOCAL_PATH)/configs/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
  frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
  frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
  frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml

PRODUCT_COPY_FILES += \
  frameworks/native/data/etc/android.software.webview.xml:system/etc/permissions/android.software.webview.xml

PRODUCT_COPY_FILES += \
  frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

PRODUCT_COPY_FILES += \
  frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

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
  $(LOCAL_PATH)/configs/keylayout/ACCDET.kl:system/usr/keylayout/ACCDET.kl

PRODUCT_COPY_FILES += \
  frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
  frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
  frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
  device/ulefone/t1/configs/media_profiles.xml:system/etc/media_profiles.xml

# Ramdisks
PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/rootdir/atrace.rc:root/atrace.rc \
  $(LOCAL_PATH)/rootdir/audioserver.rc:root/audioserver.rc \
  $(LOCAL_PATH)/rootdir/bootstat.rc:root/bootstat.rc \
  $(LOCAL_PATH)/rootdir/cameraserver.rc:root/cameraserver.rc \
  $(LOCAL_PATH)/rootdir/debuggerd.rc:root/debuggerd.rc \
  $(LOCAL_PATH)/rootdir/debuggerd64.rc:root/debuggerd64.rc \
  $(LOCAL_PATH)/rootdir/drmserver.rc:root/drmserver.rc \
  $(LOCAL_PATH)/rootdir/dumpstate.rc:root/dumpstate.rc \
  $(LOCAL_PATH)/rootdir/enableswap.sh:root/enableswap.sh \
  $(LOCAL_PATH)/rootdir/factory_init.connectivity.rc:root/factory_init.connectivity.rc \
  $(LOCAL_PATH)/rootdir/factory_init.project.rc:root/factory_init.project.rc \
  $(LOCAL_PATH)/rootdir/factory_init.rc:root/factory_init.rc \
  $(LOCAL_PATH)/rootdir/fstab.mt6757:root/fstab.mt6757 \
  $(LOCAL_PATH)/rootdir/gatekeeperd.rc:root/gatekeeperd.rc \
  $(LOCAL_PATH)/rootdir/init.aee.rc:root/init.aee.rc \
  $(LOCAL_PATH)/rootdir/init.common_svc.rc:root/init.common_svc.rc \
  $(LOCAL_PATH)/rootdir/init.connectivity.rc:root/init.connectivity.rc \
  $(LOCAL_PATH)/rootdir/init.epdg.rc:root/init.epdg.rc \
  $(LOCAL_PATH)/rootdir/init.fingerprint.rc:root/init.fingerprint.rc \
  $(LOCAL_PATH)/rootdir/init.mal.rc:root/init.mal.rc \
  $(LOCAL_PATH)/rootdir/init.modem.rc:root/init.modem.rc \
  $(LOCAL_PATH)/rootdir/init.mt6757.rc:root/init.mt6757.rc \
  $(LOCAL_PATH)/rootdir/init.mt6757.usb.rc:root/init.mt6757.usb.rc \
  $(LOCAL_PATH)/rootdir/init.project.rc:root/init.project.rc \
  $(LOCAL_PATH)/rootdir/init.rc:root/init.rc \
  $(LOCAL_PATH)/rootdir/init.rilproxy.rc:root/init.rilproxy.rc \
  $(LOCAL_PATH)/rootdir/init.sensor.rc:root/init.sensor.rc \
  $(LOCAL_PATH)/rootdir/init.trustkernel.rc:root/init.trustkernel.rc \
  $(LOCAL_PATH)/rootdir/init.volte.rc:root/init.volte.rc \
  $(LOCAL_PATH)/rootdir/init.wod.rc:root/init.wod.rc \
  $(LOCAL_PATH)/rootdir/keystore.rc:root/keystore.rc \
  $(LOCAL_PATH)/rootdir/lmkd.rc:root/lmkd.rc \
  $(LOCAL_PATH)/rootdir/logd.rc:root/logd.rc \
  $(LOCAL_PATH)/rootdir/mdnsd.rc:root/mdnsd.rc \
  $(LOCAL_PATH)/rootdir/mediacodec.rc:root/mediacodec.rc \
  $(LOCAL_PATH)/rootdir/mediadrmserver.rc:root/mediadrmserver.rc \
  $(LOCAL_PATH)/rootdir/mediaextractor.rc:root/mediaextractor.rc \
  $(LOCAL_PATH)/rootdir/mediaserver.rc:root/mediaserver.rc \
  $(LOCAL_PATH)/rootdir/meta_init.connectivity.rc:root/meta_init.connectivity.rc \
  $(LOCAL_PATH)/rootdir/meta_init.modem.rc:root/meta_init.modem.rc \
  $(LOCAL_PATH)/rootdir/meta_init.project.rc:root/meta_init.project.rc \
  $(LOCAL_PATH)/rootdir/meta_init.rc:root/meta_init.rc \
  $(LOCAL_PATH)/rootdir/mtpd.rc:root/mtpd.rc \
  $(LOCAL_PATH)/rootdir/multi_init.rc:root/multi_init.rc \
  $(LOCAL_PATH)/rootdir/netd.rc:root/netd.rc \
  $(LOCAL_PATH)/rootdir/racoon.rc:root/racoon.rc \
  $(LOCAL_PATH)/rootdir/servicemanager.rc:root/servicemanager.rc \
  $(LOCAL_PATH)/rootdir/surfaceflinger.rc:root/surfaceflinger.rc \
  $(LOCAL_PATH)/rootdir/ueventd.mt6757.rc:root/ueventd.mt6757.rc \
  $(LOCAL_PATH)/rootdir/uncrypt.rc:root/uncrypt.rc \
  $(LOCAL_PATH)/rootdir/vdc.rc:root/vdc.rc \
  $(LOCAL_PATH)/rootdir/vold.rc:root/vold.rc \
  $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab \
  bionic/libc/zoneinfo/tzdata:system/usr/share/zoneinfo/tzdata

# Sepolicy
BOARD_SEPOLICY_DIRS := \
  $(LOCAL_PATH)/sepolicy
BOARD_SECCOMP_POLICY := \
  $(LOCAL_PATH)/seccomp

# Sensors
PRODUCT_COPY_FILES += \
  frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
  frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
  frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
  frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
  frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
  frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml

# Telephony
SIM_COUNT := 2
PRODUCT_PROPERTY_OVERRIDES += ro.telephony.sim.count=$(SIM_COUNT)
PRODUCT_PROPERTY_OVERRIDES += persist.radio.default.sim=0
PRODUCT_PROPERTY_OVERRIDES += persist.radio.multisim.config=dsds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    ro.telephony.ril_class=MT6757 \
    ro.telephony.ril.config=fakeiccid

PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/configs/spn-conf.xml:system/etc/spn-conf.xml
