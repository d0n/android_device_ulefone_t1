#!/bin/bash
cd frameworks/av
git apply -v  ../../device/ulefone/t1/patches_decker/0001-mtk-audio-fix.patch
git apply -v  ../../device/ulefone/t1/patches_decker/0003-add-mising-MediaBufferGroup-acquire_buffer-symbol.patch
git apply -v  ../../device/ulefone/t1/patches_decker/0004-add-mising-MediaBufferGroup-acquire_buffer-symbol-2.patch
cd -
cd frameworks/native
git apply -v  ../../device/ulefone/t1/patches_decker/0005-_ZN7android13GraphicBufferC1Ejjij-symbol-fix-on-fram.patch
cd -
