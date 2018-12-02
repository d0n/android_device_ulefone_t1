#!/bin/bash

VENDOR=ulefone
DEVICE=t1
OUTDIR=${bdir}/vendor/$VENDOR/$DEVICE
AMAKE=${OUTDIR}/Android.mk
VMAKE=${OUTDIR}/VendorBoardConfig.mk
BMAKE=${OUTDIR}/$DEVICE-vendor-blobs.mk
CMAKE=${OUTDIR}/$DEVICE-vendor.mk


printf "# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/$VENDOR/$DEVICE/setup-makefiles.sh

PRODUCT_COPY_FILES += \\\\\n" >$BMAKE

printf "# Copyright \(C\) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the \"License\");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/$VENDOR/$DEVICE/setup-makefiles.sh

\$(call inherit-product, vendor/$VENDOR/$DEVICE/$DEVICE-vendor-blobs.mk)
" >$CMAKE

printf "# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the \"License\");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/$VENDOR/$DEVICE/setup-makefiles.sh

PRODUCT_PACKAGES += \\\\
  librilmtk-prop-md1 \\
  librilmtk-prop-md2 \\
  mtk-ril-prop-md1 \\
  rild-prop-md1 \\
  mtk-ril \\
  libmtkplayer \\
  libRSDriver_mtk \\
  libged \\
  libnvram \\
  libvcodecdrv \\
  libvcodecdrv \\
  libcameracustom \\
  libcam.client \\
  libdpframework \\
  libmtkcam_fwkutils \\
  libaudiocustparam \\
  libmtkcam_fwkutils \\
  libdpframework \\
  libcam.client \\
  libcameracustom \\
  libvcodecdrv \\
  libnvram \\
  libged \\
  mtk-ril \\
  libmtkplayer \\
  libaudiocustparam  \\\\\n" >$VMAKE

printf "# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the \"License\");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/\$VENDOR/\$DEVICE/setup-makefiles.sh

LOCAL_PATH := \$(call my-dir)
DEVICE_PATH := \$(TOP)/device/$VENDOR/$DEVICE\n\n" >$AMAKE

./setup-vendor-libs.sh
./setup-vendor-apks.sh
./setup-vendor-blobs.sh

echo "\$(shell mkdir -p \$(OUT)/obj_arm/lib \$(OUT)/obj/lib \$(OUT)/obj_arm/SHARED_LIBRARIES/mtk-rilproxy_intermediates/ \$(OUT)/obj/SHARED_LIBRARIES/mtk-rilproxy_intermediates/ \$(OUT)/obj_arm/SHARED_LIBRARIES/mtk-rilmd2_intermediates/ \$(OUT)/obj/SHARED_LIBRARIES/mtk-rilmd2_intermediates/ \$(OUT)/obj_arm/SHARED_LIBRARIES/mtk-ril_intermediates \$(OUT)/obj/SHARED_LIBRARIES/mtk-ril_intermediates) #\$(OUT)/obj/SHARED_LIBRARIES/libaudiopolicyservice_intermediates/LINKED \$(OUT)/obj/STATIC_LIBRARIES/lib_driver_cmd_mt66xx_intermediates/ \$(OUT_DIR_COMMON_BASE)/d0ndroid/host/linux-x86/obj/SHARED_LIBRARIES/libcurl-host_intermediates \$(OUT_DIR_COMMON_BASE)/d0ndroid/host/linux-x86/obj/lib/ \$(OUT_DIR_COMMON_BASE)/d0ndroid/host/linux-x86/lib64 \$(OUT)/obj/SHARED_LIBRARIES/libhwm_intermediates \$(OUT)/obj_arm/SHARED_LIBRARIES/libhwm_intermediates \$(OUT)/obj_arm/SHARED_LIBRARIES/librilproxy_intermediates \$(OUT)/obj_arm/SHARED_LIBRARIES/librilproxyutils_intermediates \$(OUT)/obj/SHARED_LIBRARIES/librilproxy_intermediates \$(OUT)/obj/SHARED_LIBRARIES/librilproxyutils_intermediates \$(OUT)/obj/STATIC_LIBRARIES/rild-prop-md1_intermediates \$(OUT)/obj/STATIC_LIBRARIES/librilmtk-prop-md1_intermediates \$(OUT)/obj_arm/STATIC_LIBRARIES/mtk-ril-prop-md1_intermediates \$(OUT)/obj_arm/STATIC_LIBRARIES/mtk-ril-prop-md2_intermediates \$(OUT)/obj_arm/STATIC_LIBRARIES/mtk-ril-prop-md2_intermediates \$(OUT)/obj_arm/SHARED_LIBRARIES/librilmtk_intermediates \$(OUT)/obj_arm/SHARED_LIBRARIES/librilmtkmd2_intermediates \$(OUT)/obj_arm/SHARED_LIBRARIES/libmal_intermediates \$(OUT)/obj_arm/SHARED_LIBRARIES/libmdfx_intermediates \$(OUT)/obj/SHARED_LIBRARIES/libmal_intermediates \$(OUT)/obj/SHARED_LIBRARIES/libmdfx_intermediates \$(OUT_DIR_COMMON_BASE)/d0ndroid/host/linux-x86/lib)
\$(shell touch \$(OUT)/obj_arm/SHARED_LIBRARIES/mtk-rilproxy_intermediates/export_includes \$(OUT)/obj/SHARED_LIBRARIES/mtk-rilproxy_intermediates/export_includes \$(OUT)/obj_arm/SHARED_LIBRARIES/mtk-rilmd2_intermediates/export_includes \$(OUT)/obj/SHARED_LIBRARIES/mtk-rilmd2_intermediates/export_includes \$(OUT)/obj_arm/SHARED_LIBRARIES/mtk-ril_intermediates/export_includes \$(OUT)/obj/SHARED_LIBRARIES/mtk-ril_intermediates/export_includes) #\$(OUT)/obj/STATIC_LIBRARIES/lib_driver_cmd_mt66xx_intermediates/export_includes \$(OUT_DIR_COMMON_BASE)/d0ndroid/host/linux-x86/obj/SHARED_LIBRARIES/libcurl-host_intermediates/export_includes \$(OUT)/obj_arm/SHARED_LIBRARIES/libhwm_intermediates/export_includes \$(OUT)/obj/SHARED_LIBRARIES/libhwm_intermediates/export_includes \$(OUT)/obj_arm/SHARED_LIBRARIES/libhwm_intermediates/export_includes \$(OUT)/obj_arm/SHARED_LIBRARIES/librilproxy_intermediates/export_includes \$(OUT)/obj_arm/SHARED_LIBRARIES/librilproxyutils_intermediates/export_includes \$(OUT)/obj/SHARED_LIBRARIES/librilproxy_intermediates/export_includes \$(OUT)/obj/SHARED_LIBRARIES/librilproxyutils_intermediates/export_includes \$(OUT)/obj/STATIC_LIBRARIES/rild-prop-md1_intermediates/export_includes \$(OUT)/obj/STATIC_LIBRARIES/librilmtk-prop-md1_intermediates/export_includes \$(OUT)/obj_arm/STATIC_LIBRARIES/mtk-ril-prop-md1_intermediates/export_includes \$(OUT)/obj_arm/STATIC_LIBRARIES/mtk-ril-prop-md2_intermediates/export_includes \$(OUT)/obj_arm/STATIC_LIBRARIES/mtk-ril-prop-md2_intermediates/export_includes \$(OUT)/obj_arm/SHARED_LIBRARIES/librilmtk_intermediates/export_includes \$(OUT)/obj_arm/SHARED_LIBRARIES/librilmtkmd2_intermediates/export_includes \$(OUT)/obj_arm/SHARED_LIBRARIES/libmal_intermediates/export_includes \$(OUT)/obj_arm/SHARED_LIBRARIES/libmdfx_intermediates/export_includes \$(OUT)/obj/SHARED_LIBRARIES/libmal_intermediates/export_includes \$(OUT)/obj/SHARED_LIBRARIES/libmdfx_intermediates/export_includes)
#\$(shell cp \$(DEVICE_PATH)/mtk/lib_driver_cmd_mt66xx/arm64/lib_driver_cmd_mt66xx.a \$(OUT)/obj/STATIC_LIBRARIES/lib_driver_cmd_mt66xx_intermediates/lib_driver_cmd_mt66xx.a)
#\$(shell cp -r \$(DEVICE_PATH)/mtk/lib_driver_cmd_mt66xx/ \$(TOP)/NOTICE-TARGET-STATIC_LIBRARIES-lib_driver_cmd_mt66xx)
\$(shell cp \$(LOCAL_PATH)/proprietary/vendor/lib/mtk-ril.so \$(OUT)/obj_arm/lib/)
\$(shell cp \$(LOCAL_PATH)/proprietary/vendor/lib64/mtk-ril.so \$(OUT)/obj/lib/)
\$(shell cp \$(LOCAL_PATH)/proprietary/vendor/lib/mtk-rilmd2.so \$(OUT)/obj_arm/lib/)
\$(shell cp \$(LOCAL_PATH)/proprietary/vendor/lib64/mtk-rilmd2.so \$(OUT)/obj/lib/)
\$(shell cp \$(LOCAL_PATH)/proprietary/vendor/lib/mtk-rilproxy.so \$(OUT)/obj_arm/lib/)
\$(shell cp \$(LOCAL_PATH)/proprietary/vendor/lib64/mtk-rilproxy.so \$(OUT)/obj/lib/)
\$(shell cp \$(LOCAL_PATH)/proprietary/vendor/lib/libmal_rilproxy.so \$(OUT)/obj_arm/lib/)
\$(shell cp \$(LOCAL_PATH)/proprietary/vendor/lib64/libmal_rilproxy.so \$(OUT)/obj/lib/)
\$(shell cp \$(LOCAL_PATH)/proprietary/vendor/lib/libnvram.so \$(OUT)/obj_arm/lib/)
\$(shell cp \$(LOCAL_PATH)/proprietary/vendor/lib64/libnvram.so \$(OUT)/obj/lib/)
\$(shell cp \$(LOCAL_PATH)/proprietary/vendor/lib/libfile_op.so \$(OUT)/obj_arm/lib/)
\$(shell cp \$(LOCAL_PATH)/proprietary/vendor/lib64/libfile_op.so \$(OUT)/obj/lib/)
\$(shell cp \$(LOCAL_PATH)/proprietary/vendor/lib/libmtk_vt_service.so \$(OUT)/obj_arm/lib/)
\$(shell cp \$(LOCAL_PATH)/proprietary/vendor/lib/libmtk-rilproxy.so \$(OUT)/obj_arm/lib/)
\$(shell cp \$(LOCAL_PATH)/proprietary/vendor/lib64/libmtk-rilproxy.so \$(OUT)/obj/lib/)
#\$(shell cp \$(LOCAL_PATH)/proprietary/lib/libaudiopolicymanager.so \$(OUT)/obj_arm/lib/)
#\$(shell cp \$(LOCAL_PATH)/proprietary/lib64/libaudiopolicymanager.so \$(OUT)/obj/lib/)
#\$(shell cp \$(LOCAL_PATH)/proprietary/vendor/lib/libprogrambinary.so \$(OUT)/obj_arm/lib/)
#\$(shell cp \$(LOCAL_PATH)/proprietary/vendor/lib64/libprogrambinary.so \$(OUT)/obj/lib/)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib/mtk-ril.so > \$(OUT)/obj_arm/lib/mtk-ril.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib64/mtk-ril.so > \$(OUT)/obj/lib/mtk-ril.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib/mtk-rilmd2.so > \$(OUT)/obj_arm/lib/mtk-rilmd2.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib64/mtk-rilmd2.so > \$(OUT)/obj/lib/mtk-rilmd2.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib/mtk-rilproxy.so > \$(OUT)/obj_arm/lib/mtk-rilproxy.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib64/mtk-rilproxy.so > \$(OUT)/obj/lib/mtk-rilproxy.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib/libmal_rilproxy.so > \$(OUT)/obj_arm/lib/libmal_rilproxy.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib64/libmal_rilproxy.so > \$(OUT)/obj/lib/libmal_rilproxy.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib/libnvram.so > \$(OUT)/obj_arm/lib/libnvram.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib64/libnvram.so > \$(OUT)/obj/lib/libnvram.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib/libfile_op.so > \$(OUT)/obj_arm/lib/libfile_op.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib64/libfile_op.so > \$(OUT)/obj/lib/libfile_op.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib/libmtk_vt_service.so > \$(OUT)/obj_arm/lib/libmtk_vt_service.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib/libmdfx.so > \$(OUT)/obj_arm/lib/libmdfx.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib64/libmdfx.so > \$(OUT)/obj/lib/libmdfx.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib/libmal.so > \$(OUT)/obj_arm/lib/libmal.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib64/libmal.so > \$(OUT)/obj/lib/libmal.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib/libhwm.so > \$(OUT)/obj_arm/lib/libhwm.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib64/libhwm.so > \$(OUT)/obj/lib/libhwm.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib/librilmtkmd2.so > \$(OUT)/obj_arm/lib/librilmtkmd2.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib64/librilmtkmd2.so > \$(OUT)/obj/lib/librilmtkmd2.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib/librilmtk.so > \$(OUT)/obj_arm/lib/librilmtk.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib64/librilmtk.so > \$(OUT)/obj/lib/librilmtk.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib/librilproxyutils.so > \$(OUT)/obj_arm/lib/librilproxyutils.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib64/librilproxyutils.so > \$(OUT)/obj/lib/librilproxyutils.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib/librilproxy.so > \$(OUT)/obj_arm/lib/librilproxy.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib64/librilproxy.so > \$(OUT)/obj/lib/librilproxy.so.toc)
#\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/lib/libaudiopolicymanager.so > \$(OUT)/obj_arm/lib/libaudiopolicymanager.so.toc)
#\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/lib64/libaudiopolicymanager.so > \$(OUT)/obj/lib/libaudiopolicymanager.so.toc)" >>$AMAKE
