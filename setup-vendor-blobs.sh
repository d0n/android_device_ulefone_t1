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
  grep -qs "^$(basename $I)\$" $ddir/blackbins.lst && continue
  echo $I
  BIN=$(basename $I)
  BDIR="$(dirname $I)"
  printf "include \$(CLEAR_VARS)\nLOCAL_MODULE := ${BIN}\nLOCAL_MODULE_CLASS := EXECUTABLES\nLOCAL_SRC_FILES := proprietary/${I}\nLOCAL_MODULE_PATH := \$(PRODUCT_OUT)/system/${BDIR}\n" >>$AMAKE
  if [ "$(echo $I |awk -F'/' '{print $1}')" == "vendor" ] ;then
    printf "LOCAL_PROPRIETARY_MODULE := true\n" >> $AMAKE
  fi
  if [ "$BIN" == "vtservice" ] ;then
    printf "LOCAL_MULTILIB := 32\nLOCAL_SHARED_LIBRARIES := libc++ libutils libbinder libmtk_vt_service libmtk_vt_wrapper libmtk_vt_swip libmtk_vt_utils\n" >> $AMAKE
  fi
  printf "include \$(BUILD_PREBUILT)\n\n" >>$AMAKE
  printf "  ${BIN} \\\\\n" >>$VMAKE
done
for I in $(find * -type f -name "*.ini" -or -name "*.rc" -or -name "*.xml" -or -name "*.cfg" -or -name "*.conf" -or -name "*.cnf") ;do
  BIN=$(basename $I)
  grep -qs $BIN $ddir/blackbins.lst && continue
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
  #grep -qs "${I}" $AMAKE && continue
  #F=$(echo $I |sed 's/vndor\///')
  grep -qs "  vendor/$VENDOR/$DEVICE/proprietary/${I}" $BMAKE && continue
  echo $I
  printf "  vendor/$VENDOR/$DEVICE/proprietary/${I}:system/${I} \\\\\n" >> $BMAKE
  #if [ "$I" != "$F" ] ;then
  #  printf "  vendor/$VENDOR/$DEVICE/proprietary/${I}:system/${F} \\\\\n" >> $BMAKE
  #fi
done
cd - >/dev/null
