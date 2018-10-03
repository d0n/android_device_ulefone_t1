#!/bin/bash

VENDOR=ulefone
DEVICE=t1

BASE=$BDIR/vendor/$VENDOR/$DEVICE/proprietary

rm -rf $BASE

echo "Pulling $DEVICE files..."
for I in `cat blobs.lst | grep -v ^# | grep -v ^$`; do
    #FILE=$(echo $FILE |sed 's/^\/system\///')
    DIR=$(dirname $(echo $I |sed 's/^\/system\///'))
    FILE=$(basename $I)
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    #for i in $(find ~/and/stock -type f -iname $FILE) ;do
    #  cp $i ${BASE}/${DIR}/${FILE}
    #done
    adb pull $I ${BASE}/$(echo $FILE |sed 's/^\/system\///')
done

./setup-makefiles.sh
