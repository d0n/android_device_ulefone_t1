#!/bin/bash

VENDOR=ulefone
DEVICE=t1
OUTDIR=${bdir}/vendor/$VENDOR/$DEVICE
AMAKE=${OUTDIR}/Android.mk
CMAKE=${OUTDIR}/VendorBoardConfig.mk
VMAKE=${OUTDIR}/t1-vendor-blobs.mk

cd $OUTDIR/proprietary >/dev/null
for I in $(find bin/ vendor/bin -type f) ;do
  grep -qs $I $AMAKE && continue
  #grep -qs $I $VMAKE && continue
  BIN=$(basename $I)
  BDIR=$(dirname $I)
  printf "include \$(CLEAR_VARS)\nLOCAL_MODULE := ${BIN}\nLOCAL_MODULE_TAGS := optional\nLOCAL_MODULE_CLASS := EXECUTABLES\nLOCAL_SRC_FILES := proprietary/${BDIR}/${BIN}\nLOCAL_MODULE_PATH := system/${BDIR}\ninclude \$(BUILD_PREBUILT)\n\n" >>$AMAKE
  printf "  ${BIN}" >>$CMAKE
  echo ' \' >>$CMAKE
done
cd - >/dev/null
