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
  printf "include \$(CLEAR_VARS)\nLOCAL_MODULE := ${BIN}\nLOCAL_MODULE_TAGS := optional\nLOCAL_MODULE_CLASS := EXECUTABLES\nLOCAL_SRC_FILES := proprietary/${I}\nLOCAL_MODULE_PATH := \$(PRODUCT_OUT)/system/${BDIR}\n" >>$AMAKE
  if [ "$(echo $I |awk -F'/' '{print $1}')" == "vendor" ] ;then
    printf "LOCAL_PROPRIETARY_MODULE := true\n" >> $AMAKE
  fi
  printf "include \$(BUILD_PREBUILT)\n\n" >>$AMAKE
  printf "  ${BIN} \\\\\n" >>$VMAKE
done
for I in $(find * -type f) ;do
  grep -qs $I $AMAKE && continue
  grep -qs $I $ddir/blackbins.lst && continue
  if [ "$(echo $I |awk -F'.' '{print $NF}')" == "rc" ] ;then
    BIN=$(basename $I)
    BDIR="$(dirname $I |sed 's/^etc\///')"
    printf "include \$(CLEAR_VARS)\nLOCAL_MODULE := $BIN\nLOCAL_MODULE_CLASS := ETC\nLOCAL_SRC_FILES := proprietary/$I\nLOCAL_MODULE_PATH := \$(TARGET_OUT_ETC)/${BDIR}\n" >>$AMAKE
    if [ "$(echo $I |awk -F'/' '{print $1}')" == "vendor" ] ;then
      printf "LOCAL_PROPRIETARY_MODULE := true\n" >> $AMAKE
    fi
    printf "include \$(BUILD_PREBUILT)\n\n" >>$AMAKE
  fi
done
for I in $(find * -xtype f -not -name "*.apk") ;do
  #grep -qs $I $AMAKE && continue
  printf "  vendor/$VENDOR/$DEVICE/proprietary/${I}:system/${I} \\\\\n" >> $BMAKE
done
cd - >/dev/null
