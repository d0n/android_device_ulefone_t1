#!/bin/bash

VENDOR=ulefone
DEVICE=t1
OUTDIR=${bdir}/vendor/$VENDOR/$DEVICE
AMAKE=${OUTDIR}/Android.mk
CMAKE=${OUTDIR}/VendorBoardConfig.mk

cd $OUTDIR/proprietary >/dev/null
for s in app priv-app vendor/app vendor/priv-app vendor/plugin vendor/framework ;do
  for a in $(ls $s 2>/dev/null) ;do
    grep -qs "^${a}\$" ./blackapks.lst && continue
    grep -qs "^LOCAL_MODULE := $a\$" $AMAKE && continue
    printf "include \$(CLEAR_VARS)\nLOCAL_MODULE := $a\nLOCAL_MODULE_CLASS := APPS\n" >>$AMAKE
    if [ "$(echo $s |awk -F'/' '{print $1}')" == "vendor" ] ;then
      printf "LOCAL_PROPRIETARY_MODULE := true\n" >>$AMAKE
    fi
    if [ "$s" == "priv-app" -o "$s" == "vendor/priv-app" ] ;then
      printf "LOCAL_PRIVILEGED_MODULE := true\n" >>$AMAKE
    fi
    printf "LOCAL_SRC_FILES := " >>$AMAKE
    c="0"
    for f in $(find $s/$a -type f) ;do
      if [ "$c" == "0" ] ;then
        printf "proprietary/$f " >>$AMAKE
      else
        printf "\$(LOCAL_PATH)/proprietary/$f " >>$AMAKE
      fi
      let c+=1
    done
    printf "\nLOCAL_DEX_PREOPT := false\nLOCAL_MODULE_PATH := \$(PRODUCT_OUT)/system/$s\nLOCAL_CERTIFICATE := PRESIGNED\ninclude \$(BUILD_PREBUILT)\n\n" >>$AMAKE
  done
done
exit
