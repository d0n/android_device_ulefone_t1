#!/bin/bash

VENDOR=ulefone
DEVICE=t1
OUTDIR=${bdir}/vendor/$VENDOR/$DEVICE
AMAKE=${OUTDIR}/Android.mk
BMAKE=${OUTDIR}/$DEVICE-vendor-blobs.mk
VMAKE=${OUTDIR}/VendorBoardConfig.mk

cd $OUTDIR/proprietary >/dev/null
for I in $(find bin/ vendor/bin -type f) ;do
  grep -qs $I $AMAKE && continue
  grep -qs $(basename $I) $ddir/blackbins.lst && continue
  echo $I
  BIN=$(basename $I)
  BDIR="$(dirname /system/$I |sed 's/^\///')"
  printf "include \$(CLEAR_VARS)\nLOCAL_MODULE := ${BIN}\nLOCAL_MODULE_TAGS := optional\nLOCAL_MODULE_CLASS := EXECUTABLES\nLOCAL_SRC_FILES := proprietary/$(dirname $I)/${BIN}\nLOCAL_MODULE_PATH := ${BDIR}\ninclude \$(BUILD_PREBUILT)\n\n" >>$AMAKE
  printf "  ${BIN}" >>$VMAKE
  echo ' \' >>$VMAKE
done
for I in $(find * -xtype f -not -name *.odex -and -not -name *.apk) ;do
  #grep -qs $I $AMAKE && continue
  if [ "$(dirname $I)" == "smartpa_params" ] ;then
    I="etc/audio_param/$(basename $I)"
  fi
  printf "  vendor/$VENDOR/$DEVICE/proprietary/${I}:system/${I} \\\\\n" >> $BMAKE
done
cd - >/dev/null
