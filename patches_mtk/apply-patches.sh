#!/bin/bash
cd system/core
git apply --unsafe-paths -v ../../device/ulefone/t1/patches_mtk/system_core.patch
cd ../..
cd bionic
git apply --unsafe-paths -v ../device/ulefone/t1/patches_mtk/bionic.patch
cd ..
cd system/sepolicy
git apply --unsafe-paths -v ../../device/ulefone/t1/patches_mtk/system_sepolicy.patch
cd ../..
cd frameworks/av
git apply --unsafe-paths -v ../../device/ulefone/t1/patches_mtk/frameworks_av.patch
cd ..
cd native
git apply --unsafe-paths -v ../../device/ulefone/t1/patches_mtk/frameworks_native.patch
cd ..
cd base
git apply --unsafe-paths -v ../../device/ulefone/t1/patches_mtk/frameworks_base.patch
cd ..
cd opt/telephony
git apply --unsafe-paths -v ../../../device/ulefone/t1/patches_mtk/frameworks_opt_telephony.patch
cd ../../..
cd packages/apps/Snap
git apply --unsafe-paths -v ../../../device/ulefone/t1/patches_mtk/snap.patch
cd ..
cd FMRadio
git apply --unsafe-paths -v ../../../device/ulefone/t1/patches_mtk/fmradio.patch
cd ../../..
cd system/netd
git apply --unsafe-paths -v ../../device/ulefone/t1/patches_mtk/system_netd.patch
cd ../..
cd vendor/cmsdk
git apply --unsafe-paths -v ../../device/ulefone/t1/patches_mtk/vendor_cmsdk.patch
cd ../..
