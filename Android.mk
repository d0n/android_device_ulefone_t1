LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),t1)

include $(call all-makefiles-under,$(LOCAL_PATH))
$(shell mkdir -p $(OUT)/obj/busybox)
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

endif
