LOCAL_PATH := $(call my-dir)

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/lineage_t1.mk
include $(LOCAL_PATH)/BoardConfig.mk
ifeq ($(TARGET_DEVICE),t1)

include $(call all-makefiles-under,$(LOCAL_PATH))
$(shell mkdir -p $(OUT)/obj/busybox)
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

endif
