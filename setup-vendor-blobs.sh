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
for I in $(find * -type f -name "*.ini" -or -name "*.rc" -or -name "*.xml" -or -name "*.cfg" -or -name "*.conf" -or -name "*.cnf") ;do
  grep -qs $I $ddir/blackbins.lst && continue
  BIN=$(basename $I)
  grep -qs "LOCAL_MODULE := ${BIN}" $AMAKE && continue
  SUF="$(echo $I |awk -F'.' '{print $NF}')"
  echo $I
  BDIR="$(dirname $I)"
  VDIR="$(echo $I |awk -F'/' '{print $1}')"
	printf "include \$(CLEAR_VARS)\nLOCAL_MODULE := ${BIN}\nLOCAL_SRC_FILES := proprietary/$I\nLOCAL_MODULE_CLASS := ETC\n" >>$AMAKE
  if [ "$(echo $I |awk -F'/' '{print $1}')" == "vendor" ] ;then
    printf "LOCAL_PROPRIETARY_MODULE := true\n" >> $AMAKE
  fi
  printf "LOCAL_MODULE_PATH := \$(PRODUCT_OUT)/system/${BDIR}\ninclude \$(BUILD_PREBUILT)\n\n" >>$AMAKE
  printf "  ${BIN} \\\\\n" >>$VMAKE
done
for I in $(find * -type f) ;do
  grep -qs "^LOCAL_MODULE := ${I%.*}" $AMAKE && continue
  echo $I
  printf "  vendor/$VENDOR/$DEVICE/proprietary/${I}:system/${I} \\\\\n" >> $BMAKE
done
cd - >/dev/null
