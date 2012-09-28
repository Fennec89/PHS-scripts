#!/bin/bash
PATH=`pwd`
if [ -f ${1} ];then
    echo "Filen finns: ${PATH}/${1}"
else
    echo "Filen existerar inte"
fi
exit 0
