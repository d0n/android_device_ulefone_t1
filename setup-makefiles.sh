#!/bin/bash

VENDOR=ulefone
DEVICE=t1
OUTDIR=${bdir}/vendor/$VENDOR/$DEVICE

./setup-vendor-blobs.sh
./setup-vendor-libs.sh
./setup-vendor-apks.sh
./setup-vendor-bins.sh
