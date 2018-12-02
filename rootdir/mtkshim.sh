#!/bin/sh

if ! [ -e /system/etc/wifi ] ;then
  ln -s /system/vendor/etc/wifi /system/etc/wifi
fi
if ! [ -e /system/etc/audio_param ] ;then
  ln -s /system/vendor/etc/audio_param /system/etc/audio_param
fi
if ! [ -e /system/etc/init/init.mal.rc ] ;then
  ln -s /system/vendor/etc/init/init.mal.rc /system/etc/init/init.mal.rc
fi
if ! [ -e /system/etc/init/init.wod.rc ] ;then
  ln -s /system/vendor/etc/init/init.wod.rc /system/etc/init/init.wod.rc
fi
