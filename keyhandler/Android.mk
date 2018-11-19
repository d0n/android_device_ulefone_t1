LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := com.cyanogenmod.keyhandler
LOCAL_SRC_FILES := $(call all-java-files-under,src)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/framework
LOCAL_STATIC_JAVA_LIBRARIES := org.cyanogenmod.platform.internal
include $(BUILD_JAVA_LIBRARY)

