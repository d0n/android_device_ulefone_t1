#
# Copyright (C) 2016 The CyanogenMod Project
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
#

# Device path
LOCAL_PATH := device/ulefone/t1

# Device board elements
include $(LOCAL_PATH)/board/*.mk
include $(LOCAL_PATH)/PlatformConfig.mk

# Device vendor board
-include vendor/ulefone/t1/BoardConfigVendor.mk

#######################################################################

# Platform
TARGET_OTA_ASSERT_DEVICE := t1,p15v57c2k_gq_tee
TARGET_BOOTLOADER_BOARD_NAME := mt6757
MTK_PROJECT_CONFIG := $(LOCAL_PATH)/ProjectConfig.mk
include $(MTK_PROJECT_CONFIG)
MTK_INTERNAL_CDEFS := $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_NAME),$(if $(filter-out no NO none NONE false FALSE,$($(t))),-D$(t)))
MTK_INTERNAL_CDEFS += $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_VALUE),$(if $(filter-out no NO none NONE false FALSE,$($(t))),$(foreach v,$(shell echo $($(t)) | tr '[a-z]' '[A-Z]'),-D$(v))))
MTK_INTERNAL_CDEFS += $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_NAME_VALUE),$(if $(filter-out no NO none NONE false FALSE,$($(t))),-D$(t)=\"$($(t))\"))
BOARD_GLOBAL_CFLAGS += $(MTK_INTERNAL_CDEFS)
BOARD_GLOBAL_CPPFLAGS += $(MTK_INTERNAL_CDEFS)
TARGET_KMODULES := true
BOARD_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
BOARD_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
TARGET_CPU_MEMCPY_OPT_DISABLE := true
TARGET_PROVIDES_INIT_RC := true
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BLOCK_BASED_OTA := false
BOARD_HAS_FLIPPED_SCREEN := true
EXTENDED_FONT_FOOTPRINT := true
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop
#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/11270000.usb3/musb-hdrc/gadget/lun%d/file
