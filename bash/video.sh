#!/bin/bash
folder=$1
type=$2

if [ -d ${folder} ];then 
    if [ ${type} == 'avi' ];then
        find ${folder} -iname '*.avi' -exec mplayer -vo null -ao null -identify -frames 0 2> /dev/null '{}' \; | grep 'ID_LENGTH' | cut -d'=' -f2
    elif [ ${type} == 'jpg' ];then
        find ${folder} -iname '*.jp*' -exec eog '{}' \;
    fi
fi
