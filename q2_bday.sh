#!/bin/bash

BDAY="04/01/1999";
echo $BDAY;

SUM=0
num_regex='^[0-9]+$'
for (( i=0; i<${#BDAY}; i++ )); do
    if [[ ${BDAY:$i:1} =~ $num_regex ]] ; then
        SUM=`expr $SUM + ${BDAY:$i:1}`
    fi
done

echo $SUM
