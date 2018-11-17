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
    printf "LOCAL_SHARED_LIBRARIES = libc++ libz libutils libRS_internal libbcinfo liblog libEGL libGLESv1_CM libGLESv2 libnativewindow\n" >> $AMAKE
  elif [ "$LIB" == "libaudiopolicymanagerdefault.so" ] ;then
	printf "LOCAL_EXPORT_C_INCLUDES := \$(DEVICE_PATH)/include\n" >> $AMAKE
  elif [ "$LIB" == "libvtmal.so" ] ;then
    printf "LOCAL_SHARED_LIBRARIES = libc++ libutils libcutils libbinder libmtk_symbols\n" >> $AMAKE
  fi
  printf "include \$(PREBUILT_SHARED_LIBRARY)\n\n" >> $AMAKE
  printf "  ${LIB%.*} \\\\\n" >> $VMAKE
done
cd - >/dev/null
