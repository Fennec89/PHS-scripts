#!/bin/bash
#########################
# Author: Gustav Fahlén #
# Date: 2012-09-28      #
# @: PHS                #
#########################
folder=$1
target=$2

if [ $2 ];then
    arr=`find ${folder} -iname '*.avi' | cut -d'/' -f5`
    for line in ${arr}
    do
        echo ${line}
        mkdir -p "${target}${line}"
        length=`mplayer -vo null -ao null -identify -frames 0 ${folder}${line} 2> /dev/null | grep 'ID_LENGTH' | cut -d'=' -f2`
        len=`echo ${length} | awk '{printf("%d\n",$1 + 0.5)}'`
        mid=$((${len}/2))
        mplayer -vo jpeg -ao null -frames 1 -ss ${mid} ${folder}${line}
        mv *.jpg "${line}/${line}.jpg"
    done

else
    echo "You must select a target dir!"
fi
