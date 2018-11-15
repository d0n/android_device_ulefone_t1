# Device init files
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE       := atrace.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := atrace.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := audioserver.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := audioserver.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := bootanim.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := bootanim.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := bootstat.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := bootstat.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := cameraserver.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := cameraserver.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := debuggerd.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := debuggerd.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := debuggerd64.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := debuggerd64.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := drmserver.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := drmserver.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := dumpstate.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := dumpstate.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := enableswap.sh
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := enableswap.sh
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := factory_init.connectivity.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := factory_init.connectivity.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := factory_init.project.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := factory_init.project.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := factory_init.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := factory_init.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := fstab.mt6757
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := fstab.mt6757
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := gatekeeperd.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := gatekeeperd.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.aee.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.aee.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.common_svc.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.common_svc.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.connectivity.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.connectivity.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.environ.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.environ.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.epdg.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.epdg.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.fingerprint.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.fingerprint.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.mal.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.mal.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.modem.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.modem.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.mt6757.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.mt6757.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.mt6757.usb.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.mt6757.usb.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.project.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.project.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.recovery.mt6757.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.recovery.mt6757.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.rilproxy.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.rilproxy.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.sensor.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.sensor.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.trustkernel.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.trustkernel.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.usb.configfs.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.usb.configfs.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.usb.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.usb.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.volte.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.volte.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.wod.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.wod.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.zygote32.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.zygote32.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.zygote64_32.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.zygote64_32.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := installd.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := installd.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := keystore.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := keystore.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := lmkd.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := lmkd.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := logd.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := logd.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := mdnsd.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := mdnsd.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := mediacodec.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := mediacodec.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := mediadrmserver.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := mediadrmserver.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := mediaextractor.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := mediaextractor.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := mediaserver.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := mediaserver.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := meta_init.connectivity.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := meta_init.connectivity.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := meta_init.modem.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := meta_init.modem.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := meta_init.project.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := meta_init.project.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := meta_init.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := meta_init.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := mtpd.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := mtpd.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := multi_init.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := multi_init.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := netd.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := netd.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := racoon.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := racoon.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := recovery.fstab
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := recovery.fstab
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := servicemanager.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := servicemanager.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := surfaceflinger.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := surfaceflinger.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := ueventd.mt6757.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := ueventd.mt6757.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := ueventd.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := ueventd.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := uncrypt.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := uncrypt.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := vdc.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := vdc.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := vold.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := vold.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

PRODUCT_PACKAGES += \
  atrace.rc \
  audioserver.rc \
  bootanim.rc \
  bootstat.rc \
  cameraserver.rc \
  debuggerd.rc \
  debuggerd64.rc \
  drmserver.rc \
  dumpstate.rc \
  enableswap.sh \
  factory_init.connectivity.rc \
  factory_init.project.rc \
  factory_init.rc \
  fstab.mt6757 \
  gatekeeperd.rc \
  init.aee.rc \
  init.common_svc.rc \
  init.connectivity.rc \
  init.environ.rc \
  init.epdg.rc \
  init.fingerprint.rc \
  init.mal.rc \
  init.modem.rc \
  init.mt6757.rc \
  init.mt6757.usb.rc \
  init.project.rc \
  init.rc \
  init.recovery.mt6757.rc \
  init.rilproxy.rc \
  init.sensor.rc \
  init.trustkernel.rc \
  init.usb.configfs.rc \
  init.usb.rc \
  init.volte.rc \
  init.wod.rc \
  init.zygote32.rc \
  init.zygote64_32.rc \
  installd.rc \
  keystore.rc \
  lmkd.rc \
  logd.rc \
  mdnsd.rc \
  mediacodec.rc \
  mediadrmserver.rc \
  mediaextractor.rc \
  mediaserver.rc \
  meta_init.connectivity.rc \
  meta_init.modem.rc \
  meta_init.project.rc \
  meta_init.rc \
  mtpd.rc \
  multi_init.rc \
  netd.rc \
  racoon.rc \
  recovery.fstab \
  servicemanager.rc \
  surfaceflinger.rc \
  ueventd.mt6757.rc \
  ueventd.rc \
  uncrypt.rc \
  vdc.rc \
  vold.rc
