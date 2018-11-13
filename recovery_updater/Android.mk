LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
#ifneq ($(TARGET_PLATFORM_DEVICE_BASE),)
LOCAL_CFLAGS += -DUSES_BOOTDEVICE_PATH
#endif
LOCAL_C_INCLUDES := bootable/recovery
LOCAL_SRC_FILES := recovery_updater.cpp
LOCAL_MODULE := librecovery_updater_t1
LOCAL_MODULE_TAGS := optional
#LOCAL_MODULE_TAGS := userdebug eng
include $(BUILD_STATIC_LIBRARY)
