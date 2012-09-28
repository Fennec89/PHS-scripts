#!/bin/bash

DAY=`date +%A`
if [ ${DAY} == "Sunday" ] || [ ${DAY} == 'Saturday' ];then
    echo "Jobba för fan inte, det är ${DAY}"
else
    echo "Nu får du fan ta och jobba, det är ${DAY}!"
fi
exit 0
