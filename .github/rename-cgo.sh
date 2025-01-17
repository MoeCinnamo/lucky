#!/bin/bash

FILENAMES=$(ls)
for FILENAME in $FILENAMES
do
    if [[ $FILENAME =~ "darwin-10.16-arm64" ]];then
        echo "rename darwin-10.16-arm64 $FILENAME"
        mv $FILENAME lucky.core-darwin-arm64-cgo
    elif [[ $FILENAME =~ "darwin-10.16-amd64" ]];then
        echo "rename darwin-10.16-amd64 $FILENAME"
        mv $FILENAME lucky.core-darwin-amd64-cgo
    elif [[ $FILENAME =~ "windows-4.0-386" ]];then
        echo "rename windows 386 $FILENAME"
        mv $FILENAME lucky.core-windows-386-cgo.exe
    elif [[ $FILENAME =~ "windows-4.0-amd64" ]];then
        echo "rename windows amd64 $FILENAME"
        mv $FILENAME lucky.core-windows-amd64-cgo.exe
    elif [[ $FILENAME =~ "lucky.core-linux-arm-5" ]];then
        echo "rename lucky.core-linux-arm-5 $FILENAME"
        mv $FILENAME lucky.core-linux-armv5-cgo
    elif [[ $FILENAME =~ "lucky.core-linux-arm-6" ]];then
        echo "rename lucky.core-linux-arm-6 $FILENAME"
        mv $FILENAME lucky.core-linux-armv6-cgo
    elif [[ $FILENAME =~ "lucky.core-linux-arm-7" ]];then
        echo "rename lucky.core-linux-arm-7 $FILENAME"
        mv $FILENAME lucky.core-linux-armv7-cgo
    elif [[ $FILENAME =~ "linux" ]];then
        echo "rename linux $FILENAME"
        mv $FILENAME $FILENAME-cgo
    elif [[ $FILENAME =~ "android" ]];then
        echo "rename android $FILENAME"
        mv $FILENAME $FILENAME-cgo
    else echo "skip $FILENAME"
    fi
done
