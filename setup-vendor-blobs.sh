#!/bin/bash

VENDOR=ulefone
DEVICE=t1
OUTDIR=${bdir}/vendor/$VENDOR/$DEVICE
AMAKE=${OUTDIR}/Android.mk
BMAKE=${OUTDIR}/$DEVICE-vendor-blobs.mk
VMAKE=${OUTDIR}/VendorBoardConfig.mk

cd $OUTDIR/proprietary >/dev/null
for I in $(find bin/ vendor/bin vendor/firmware -type f) ;do
  grep -qs $I $AMAKE && continue
  grep -qs $I $ddir/blackbins.lst && continue
  echo $I
  BIN=$(basename $I)
  BDIR="$(dirname $I)"
  printf "include \$(CLEAR_VARS)\nLOCAL_MODULE := ${BIN}\nLOCAL_MODULE_CLASS := EXECUTABLES\nLOCAL_SRC_FILES := proprietary/${I}\nLOCAL_MODULE_PATH := \$(PRODUCT_OUT)/system/${BDIR}\n" >>$AMAKE
  if [ "$(echo $I |awk -F'/' '{print $1}')" == "vendor" ] ;then
    printf "LOCAL_PROPRIETARY_MODULE := true\n" >> $AMAKE
  fi
  printf "include \$(BUILD_PREBUILT)\n\n" >>$AMAKE
  printf "  ${BIN} \\\\\n" >>$VMAKE
done
for I in $(find * -type f) ;do
  grep -qs $I $ddir/blackbins.lst && continue
  SUF="$(echo $I |awk -F'.' '{print $NF}')"
  BIN=$(basename $I)
  BDIR="$(dirname $I)"
  grep -qs "^LOCAL_MODULE := ${BIN%.*}$" $AMAKE && continue
  if [ "$SUF" == "rc" ] || [ "$SUF" == "cfg" ] || [ "$SUF" == "xml" ] || [ "$SUF" == "ini" ] ;then
	printf "include \$(CLEAR_VARS)\nLOCAL_MODULE := ${BIN%.*}\nLOCAL_MODULE_CLASS := ETC\nLOCAL_SRC_FILES := proprietary/$I\nLOCAL_MODULE_PATH := \$(PRODUCT_OUT)/system/${BDIR}\n" >>$AMAKE
    if [ "$(echo $I |awk -F'/' '{print $1}')" == "vendor" ] ;then
      printf "LOCAL_PROPRIETARY_MODULE := true\n" >> $AMAKE
    fi
    printf "include \$(BUILD_PREBUILT)\n\n" >>$AMAKE
  elif [ "$(echo $I |awk -F'.' '{print $NF}')" == "jar" ] ;then
    printf "include \$(CLEAR_VARS)\nLOCAL_DEX_PREOPT := false\nLOCAL_MODULE := ${BIN%.*}\nLOCAL_MODULE_CLASS := JAVA_LIBRARIES\nLOCAL_SRC_FILES := proprietary/$I\nLOCAL_MODULE_PATH := \$(PRODUCT_OUT)/system/${BDIR}\n" >>$AMAKE
    if [ "$(echo $I |awk -F'/' '{print $1}')" == "vendor" ] ;then
      printf "LOCAL_PROPRIETARY_MODULE := true\n" >> $AMAKE
    fi
    printf "include \$(BUILD_PREBUILT)\n\n" >>$AMAKE
  fi  
done
for I in $(find * -type f) ;do
  if [ "$(dirname $I)" == "smartpa_params" ] ;then
    I="etc/audio_param/$(basename $I)"
  fi
  #grep -qs $I $AMAKE && continue
  printf "  vendor/$VENDOR/$DEVICE/proprietary/${I}:system/${I} \\\\\n" >> $BMAKE
done
cd - >/dev/null
