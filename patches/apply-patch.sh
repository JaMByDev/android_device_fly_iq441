#!/bin/bash
cd ../../../..
cd frameworks/av
git apply -v ../../device/fly/iq441/patches/framework_av/0001-libmedia-stub-out-MTK-specific-bits-audio-working.patch
git apply -v ../../device/fly/iq441/patches/framework_av/0002-camera.patch
git apply -v ../../device/fly/iq441/patches/framework_av/0003-frameworks_av_fmradio_patch.patch
git apply -v ../../device/fly/iq441/patches/framework_av/0001-sound-fix.patch
cd ../..
echo Patches Applied Successfully!
