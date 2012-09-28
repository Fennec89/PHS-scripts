#!/bin/bash

while true
do
    read CHAR
    if test ${CHAR} = 'q'
    then
        break
    fi
done
exit 0
