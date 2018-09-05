LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
<<<<<<< HEAD
LOCAL_SRC_FILES := ccci_lib.c
LOCAL_STATIC_LIBRARIES := libcutils liblog
LOCAL_SHARED_LIBRARIES := libc
LOCAL_MODULE := libccci_util
LOCAL_MULTILIB := both
LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE := false
||||||| merged common ancestors

LOCAL_SRC_FILES := ccci_lib.c

LOCAL_STATIC_LIBRARIES := libcutils liblog
	
LOCAL_SHARED_LIBRARIES := libc

LOCAL_MODULE := libccci_util
LOCAL_MULTILIB := both

LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE:=false

=======
  LOCAL_SRC_FILES := ccci_lib.c
  LOCAL_STATIC_LIBRARIES := libcutils liblog
  LOCAL_SHARED_LIBRARIES := libc
  LOCAL_MODULE := libccci_util
  LOCAL_MULTILIB := both
  LOCAL_MODULE_TAGS := optional
  LOCAL_PRELINK_MODULE := false
>>>>>>> 96eaa590f4497496661f9ddd2e74052698823cdc
include $(BUILD_SHARED_LIBRARY)
