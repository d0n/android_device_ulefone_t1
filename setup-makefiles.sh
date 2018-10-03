#!/bin/bash

VENDOR=ulefone
DEVICE=t1
OUTDIR=${bdir}/vendor/$VENDOR/$DEVICE

rm $OUTDIR/* 2>/dev/null
./setup-vendor-libs.sh
./setup-vendor-blobs.sh
./setup-vendor-apks.sh
