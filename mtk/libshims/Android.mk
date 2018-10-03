LOCAL_PATH := $(call my-dir)

# libshim_gui
include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
    gui/mtk_gui.cpp \
    gui/SensorManager.cpp

LOCAL_SHARED_LIBRARIES := libbinder libgui liblog libui libutils
LOCAL_MODULE := libshim_gui
LOCAL_CFLAGS := -O3 -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

# libshim_snd
include $(CLEAR_VARS)
LOCAL_SRC_FILES := audio/mtk_audio.cpp
LOCAL_SHARED_LIBRARIES := libbinder libmedia
LOCAL_MODULE := libshim_snd
LOCAL_CFLAGS := -O3 -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

# libshim_ui
include $(CLEAR_VARS)
LOCAL_SRC_FILES := ui/mtk_ui.cpp
LOCAL_SHARED_LIBRARIES := libbinder libui libutils
LOCAL_MODULE := libshim_ui
LOCAL_C_INCLUDES := frameworks/native/include
LOCAL_CFLAGS := -O3 -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

# libshim_xlog
include $(CLEAR_VARS)
LOCAL_SRC_FILES := xlog.c
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_MODULE := libshim_xlog
LOCAL_CFLAGS := -O3 -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := vtmal/mtk_vtmal.cpp
LOCAL_SHARED_LIBRARIES := libbinder libutils libcutils libvtmal
LOCAL_MODULE := libshim_vtmal
LOCAL_CLANG := false
LOCAL_CXX_STL := none
LOCAL_SANITIZE := never
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_CFLAGS := -O3 -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := netutils.c
LOCAL_SHARED_LIBRARIES := liblog libcutils
LOCAL_MODULE := libshim_ifc
LOCAL_C_INCLUDES += system/core/libnetutils/include
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
