LOCAL_PATH := $(call my-dir)

include $(LOCAL_PATH)/BoardConfig.mk
include $(call all-makefiles-under,$(LOCAL_PATH))
$(shell mkdir -p $(OUT)/obj/busybox)
$(shell mkdir -p $(OUT)/INSTALLED_KERNEL_HEADERS/usr)

