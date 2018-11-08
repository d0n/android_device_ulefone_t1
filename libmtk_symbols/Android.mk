# Copyright (C) 2016 fire855 <thefire855@gmail.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libmtk_symbols
LOCAL_MODULE_TAGS := optional
LOCAL_MULTILIB := both
LOCAL_SRC_FILES := \
     icu55.c \
     mtk_asc.cpp \
     mtk_audio.cpp \
     mtk_audioCompat.c \
	 mtk_bionic.cpp \
     mtk_cam.cpp \
     mtk_fence.cpp \
	 mtk_gps.cpp \
	 mtk_gui.cpp \
	 mtk_parcel.cpp \
	 mtk_wvm.cpp \
     mtk_omx.cpp \
     mtk_ui.cpp \
     mtk_xlog.c \
	 mtkcamhack.cpp \
	 program_binary_builder.cpp \
	 vtservice.cpp
# only for 64bit libraries
LOCAL_SRC_FILES_64 := mtk_parcel.cpp
LOCAL_PROPRIETARY_MODULE := true
LOCAL_C_INCLUDES += system/core/include/
LOCAL_SHARED_LIBRARIES := libbinder libutils liblog libgui libui libicuuc libicui18n libmedia
include $(BUILD_SHARED_LIBRARY)
