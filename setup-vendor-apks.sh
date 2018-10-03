#!/bin/bash

VENDOR=ulefone
DEVICE=t1
OUTDIR=${bdir}/vendor/$VENDOR/$DEVICE
AMAKE=${OUTDIR}/Android.mk
CMAKE=${OUTDIR}/VendorBoardConfig.mk

cd $OUTDIR/proprietary >/dev/null
for I in $(find * -type f -name *.apk) ;do
  grep -qs $I $AMAKE && continue
  APK=$(basename $I)
  ADIR=$(dirname $I)
  ANAME=${APK%.*}
  printf "include \$(CLEAR_VARS)\nLOCAL_MODULE := ${APK%.*}\nLOCAL_PRIVILEGED_MODULE := false\nLOCAL_MODULE_TAGS := optional\nLOCAL_MODULE_CLASS := APPS\nLOCAL_SRC_FILES := proprietary/${ADIR}/${APK}\nLOCAL_MODULE_PATH := ${ADIR}\nLOCAL_CERTIFICATE := PRESIGNED\ninclude \$(BUILD_PREBUILT)\n\n" >>$AMAKE
  printf "  ${ANAME}" >>$CMAKE
  echo ' \' >>$CMAKE
done
cd - >/dev/null
