#!/bin/sh

for i in $(cat /system/nvdata/dirs.lst) ;do
  u=$(echo $i |awk -F':' '{print $1}')
  g=$(echo $i |awk -F':' '{print $2}')
  d=$(echo $i |awk -F':' '{print $3}')
  rmdir /data/$d 2>/dev/null
  rm /data/$d 2>/dev/null
  if ! [ -d /data/$i ] ;then
    cp -r /system/data/$i /data/$i
  fi
  chown -R ${u}:${g} $d
done
