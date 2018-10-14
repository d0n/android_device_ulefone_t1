LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	mtk_xlog.cpp \
	mtk_gui.cpp \
	mtkcamhack.cpp \
	mtk_ui.cpp \
	mtk_omx.cpp \
	mtk_bionic.cpp \
	mtk_gps.cpp \
	program_binary_builder.cpp \
	vtservice.cpp \
	mtk_omx.cpp \
	IGraphicBufferConsumer.cpp \
	BufferItemConsumer.cpp
	

# only for 32bit libraries
#LOCAL_SRC_FILES_32 := mtk_string.cpp
#LOCAL_SRC_FILES_32 += mtk_wvm32.cpp
# only for 64bit libraries
LOCAL_SRC_FILES_64 := mtk_parcel.cpp
#LOCAL_SRC_FILES_64 += mtk_wvm64.cpp


LOCAL_SHARED_LIBRARIES := libcutils libbinder libutils liblog libgui libui libicuuc libicui18n libcrypto libstagefright_foundation libssl libc libmedia
LOCAL_C_INCLUDES += frameworks/av/media/mtp/ system/core/include/ frameworks/rs/server/ frameworks/av/include/ hardware/libhardware/include/
LOCAL_MODULE := libmtk_symbols
LOCAL_MODULE_TAGS := optional

LOCAL_CLANG := true
LOCAL_CPPFLAGS := -std=c++1y -Wno-exit-time-destructors -Wno-global-constructors -Wno-c++98-compat-pedantic -Wno-four-char-constants -Wno-padded

include $(BUILD_SHARED_LIBRARY)
