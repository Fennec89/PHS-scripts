#!/bin/bash

START=$1
STOP=$2

echo "Start: ${START}"
echo "Stop: ${STOP}"

if [ ${START} -gt ${STOP} ];then
    for ((I=${START};I>=${STOP};I--))
    do
        echo ${I}
    done
else
    for ((I=${START};I<=${STOP};I++))
    do
        echo ${I}
    done
fi
exit 0
