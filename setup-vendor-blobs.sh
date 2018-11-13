#!/bin/bash

VENDOR=ulefone
DEVICE=t1
OUTDIR=${bdir}/vendor/$VENDOR/$DEVICE
AMAKE=${OUTDIR}/Android.mk
BMAKE=${OUTDIR}/$DEVICE-vendor-blobs.mk
VMAKE=${OUTDIR}/VendorBoardConfig.mk

cd $OUTDIR/proprietary >/dev/null
for I in $(find bin/ vendor/bin -type f -not -name "*.apk") ;do
  grep -qs $I $AMAKE && continue
  grep -qs $I $ddir/blackbins.lst && continue
  echo $I
  BIN=$(basename $I)
  BDIR="$(dirname /system/$I |sed 's/^\///')"
  printf "include \$(CLEAR_VARS)\nLOCAL_MODULE := ${BIN}\nLOCAL_MODULE_TAGS := optional\nLOCAL_MODULE_CLASS := EXECUTABLES\nLOCAL_SRC_FILES := proprietary/$(dirname $I)/${BIN}\nLOCAL_MODULE_PATH := ${BDIR}\n" >> $AMAKE
  #if [ "$I" == "vendor/bin/program_binary_builder" ] ;then
  #  printf "LOCAL_SHARED_LIBRARIES := libmtk_symbols\n" >>$AMAKE
  #fi
  printf "include \$(BUILD_PREBUILT)\n\n" >>$AMAKE
  printf "  ${BIN} \\\\\n" >>$VMAKE
done
for I in $(find * -xtype f) ;do
  #grep -qs $I $AMAKE && continue
  if [ "$(dirname $I)" == "smartpa_params" ] ;then
    I="etc/audio_param/$(basename $I)"
  fi
  printf "  vendor/$VENDOR/$DEVICE/proprietary/${I}:system/${I} \\\\\n" >> $BMAKE
done
cd - >/dev/null
