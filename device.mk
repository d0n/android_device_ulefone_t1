#
# Copyright (C) 2015 The Android Open Kang Project
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

## device overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, device/ulefone/t1/product/mt6757.mk)

$(call inherit-product-if-exists, vendor/ulefone/t1/t1-vendor.mk)

$(call inherit-product, device/ulefone/mt6757-common/mt6757-common.mk)
