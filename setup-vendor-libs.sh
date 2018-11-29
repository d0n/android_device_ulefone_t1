#!/bin/bash

VENDOR=ulefone
DEVICE=t1
OUTDIR=${bdir}/vendor/$VENDOR/$DEVICE
AMAKE=${OUTDIR}/Android.mk
VMAKE=${OUTDIR}/VendorBoardConfig.mk
BMAKE=${OUTDIR}/t1-vendor-blobs.mk

cd $OUTDIR/proprietary >/dev/null
for I in $(find lib* vendor/lib* -type f) ;do
  LIB=$(basename $I)
  DDIR=$(dirname $I)
  LSUF=$(echo $LIB |awk -F'.' '{print $NF}')
  LLDIR=$(echo $DDIR |sed -r 's/.*lib6?4?(.*)/\1\//' |sed -r 's/^\///')
  LDDIR=$(echo $DDIR |sed -r 's/(.*)lib6?4?.*/\1/' |sed -r 's/^\///')
  grep -qs ${LIB} $AMAKE && continue
  grep -qs ${LIB} $ddir/blacklibs.lst && continue
  for l in libaudiopolicymanagerdefault.so libaudiopreprocessing.so libbundlewrapper.so libdownmix.so libeffectproxy.so libldnhncr.so libreverbwrapper.so libvisualizer.so libfmjni.so libdrmclearkeyplugin.so libmockdrmcryptoplugin.so ;do
    if [ $LIB == $l ] ;then
      CONTINUE=true
    fi
  done
  if [[ $CONTINUE ]] ;then
    unset CONTINUE
    continue
  fi
  echo $I
  L32="${LDDIR}lib/${LLDIR}${LIB}"
  L64="${LDDIR}lib64/${LLDIR}${LIB}"
  LTYPE="SHARED_LIBRARIES"
  if [ "$LSUF" == "bc" ] ;then
    LTYPE="EXECUTABLES"
  fi
  printf "include \$(CLEAR_VARS)\nLOCAL_MODULE_CLASS := ${LTYPE}\n" >> $AMAKE
  if [ "$(echo $I |awk -F'/' '{print $1}')" == "vendor" ] ;then
    printf "LOCAL_PROPRIETARY_MODULE := true\n" >> $AMAKE
  fi
  printf "LOCAL_ALLOW_UNDEFINED_SYMBOLS := true\n" >> $AMAKE
  printf "LOCAL_MODULE_SUFFIX := .${LSUF}\n" >> $AMAKE
  if [ -f "${L32}" -a -f "${L64}" ] ;then
    printf "LOCAL_MULTILIB := both\nLOCAL_MODULE := ${LIB%.*}\nLOCAL_MODULE_PATH_32 := \$(PRODUCT_OUT)/system/$(dirname $L32)\nLOCAL_SRC_FILES_32 := proprietary/${L32}\nLOCAL_MODULE_PATH_64 := \$(PRODUCT_OUT)/system/$(dirname $L64)\nLOCAL_SRC_FILES_64 := proprietary/${L64}\n" >> $AMAKE
  elif [ -f "${L32}" ] ;then
    if [[ $(echo $L32 |grep 'arm64') ]] ;then
      printf "LOCAL_MULTILIB := 64\nLOCAL_MODULE := ${LIB%.*}\nLOCAL_MODULE_PATH_64 := \$(PRODUCT_OUT)/system/$(dirname $L32)\nLOCAL_SRC_FILES_64 := proprietary/${L64}\n" >> $AMAKE
    else
        printf "LOCAL_MULTILIB := 32\nLOCAL_MODULE := ${LIB%.*}\nLOCAL_MODULE_PATH_32 := \$(PRODUCT_OUT)/system/$(dirname $L32)\nLOCAL_SRC_FILES_32 := proprietary/${L32}\n" >> $AMAKE
    fi
  elif [ -f "${L64}" ] ;then
    printf "LOCAL_MULTILIB := 64\nLOCAL_MODULE := ${LIB%.*}\nLOCAL_MODULE_PATH_64 := \$(PRODUCT_OUT)/system/$(dirname $L32)\nLOCAL_SRC_FILES_64 := proprietary/${L64}\n" >> $AMAKE
  else
    echo "\033[31mERROR: $I\033[0m"
  fi
  if [ "$LIB" == "libRSDriver_mtk.so" ] || [ "$LIB" == "libRSDriverArm.so" ] || [ "$LIB" == "libOpenCLIcd.so" ] || [ "$LIB" == "libOpenCL.so" ] ;then
    SHRLIBS="libc++ libz libutils libRS_internal libbcinfo liblog libEGL libGLESv1_CM libGLESv2 libnativewindow"
  elif [ "$LIB" == "gralloc.mt6757.so" ] ;then
    SHRLIBS="libhardware libGLESv1_CM libion libgralloc_extra libion_mtk libc++"
  elif [ "$LIB" == "libmal_mdmngr.so" ] ;then
    SHRLIBS="libmdfx libc++"
  elif [ "$LIB" == "libmtk_vt_service.so" ] ;then
    SHRLIBS="libandroid_runtime libbinder libnativehelper libui libgui libmedia libimsma libtmal libsource libimsma_rtp libmtk_vt_swip libvt_avsync libvt_socketbind libmtk_vt_utils libstagefright_foundation libc++"
  elif [ "$LIB" == "libmtk_vt_swip.so" ] ;then
    SHRLIBS="libmtk_vt_utils libstagefright libc++"
  elif [ "$LIB" == "libnvram.so" ] ;then
    SHRLIBS="libcustom_nvram libnvram_platform libnvram_sec libc++"
  elif [ "$LIB" == "libvt_avsync.so" ] ;then
    SHRLIBS="libbinder libc++"
  elif [ "$LIB" == "libvt_socketbind.so" ] ;then
    SHRLIBS="libbinder libc++"
  elif [ "$LIB" == "libvtmal.so" ] ;then
    SHRLIBS="libc++ libutils libcutils libbinder libmtk_symbols"
  elif [ "$LIB" == "volte_imsm.so" ] ;then
    SHRLIBS="libmal libc++"
  elif [ "$LIB" == "ccci_fsd.so" ] ;then
    SHRLIBS="libnvram libhardware_legacy libc++"
  elif [ "$LIB" == "nvram_agent_binder.so" ] ;then
    SHRLIBS="libbinder libnvram libfile_op libc++"
  else
    SHRLIBS="libc++"
  fi
  printf "LOCAL_SHARED_LIBRARIES := ${SHRLIBS}\n" >> $AMAKE
  printf "include \$(BUILD_PREBUILT)\n\n" >> $AMAKE
  printf "  ${LIB%.*} \\\\\n" >> $VMAKE
done
for I in $(find * -type f -name *.jar) ;do
  grep -qs "^$I\$" ./blacklibs.lst && continue
  BIN=$(basename $I)
  grep -qs "^LOCAL_MODULE := ${BIN%.*}\$" $AMAKE && continue
  SUF="$(echo $I |awk -F'.' '{print $NF}')"
  echo $I
  BDIR="$(dirname $I)"
  VDIR="$(echo $I |awk -F'/' '{print $1}')"
  SRCS="proprietary/$I"
  if [ "$(basename $BDIR)" == "framework" ] && [ -f $BDIR/arm/boot-${BIN%.*}.art -a -f $BDIR/arm64/boot-${BIN%.*}.art ] ;then
    SRCS="proprietary/$I \\\\\n  \$(LOCAL_PATH)/proprietary/framework/arm/boot-${BIN%.*}.art \\\\\n  \$(LOCAL_PATH)/proprietary/framework/arm/boot-${BIN%.*}.oat \\\\\n  \$(LOCAL_PATH)/proprietary/framework/arm64/boot-${BIN%.*}.art \\\\\n  \$(LOCAL_PATH)/proprietary/framework/arm64/boot-${BIN%.*}.oat"
  elif [ "$(basename $BDIR)" == "framework" ] && [ -f $BDIR/oat/arm/${BIN%.*}.odex -a -f $BDIR/oat/arm64/${BIN%.*}.odex ] ;then
    SRCS="proprietary/$I \\\\\n  \$(LOCAL_PATH)/proprietary/framework/oat/arm/${BIN%.*}.odex \\\\\n  \$(LOCAL_PATH)/proprietary/framework/oat/arm64/${BIN%.*}.odex"
  fi
  printf "include \$(CLEAR_VARS)\nLOCAL_MODULE := ${BIN%.*}\nLOCAL_SRC_FILES := ${SRCS}\nLOCAL_DEX_PREOPT := false\nLOCAL_MODULE_CLASS := JAVA_LIBRARIES\nLOCAL_MODULE_SUFFIX := \$(COMMON_JAVA_PACKAGE_SUFFIX)\n" >>$AMAKE
  if [ "$(echo $I |awk -F'/' '{print $1}')" == "vendor" ] ;then
    printf "LOCAL_PROPRIETARY_MODULE := true\n" >> $AMAKE
  fi
  printf "LOCAL_MODULE_PATH := \$(PRODUCT_OUT)/system/${BDIR}\ninclude \$(BUILD_PREBUILT)\n\n" >>$AMAKE
  printf "  ${BIN%.*} \\\\\n" >>$VMAKE
done
cd - >/dev/null
