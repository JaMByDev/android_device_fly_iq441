#!/bin/sh

VENDOR=fly
DEVICE=iq441

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary

echo "Pulling $DEVICE files..."
for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$`; do
DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
mkdir -p $BASE/$DIR
    fi

adb pull /system/$FILE $BASE/$FILE
done

# some extra stuff
adb pull /system/lib/libaudio.primary.default.so $BASE/lib/hw/audio.primary.mt6577.so
adb pull /system/lib/hw/audio_policy.default.so


./setup-makefiles.sh
