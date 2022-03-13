#!/bin/bash
# example usecase ./q5_zip_validation.sh H2Z1B8
# example usecase ./q5_zip_validation.sh 02120

# regexp to get a valid US postal code
echo $1 | grep -qE '^[0-9]{5}(-[0-9]{4})?$'

if [ $? -eq 0 ]; then
	echo "$1 is a valid US postal code."
else
	echo $1 | grep -qE '^[A-Za-z]{1}[0-9]{1}[A-Za-z]{1}(-)?[0-9]{1}[A-Za-z]{1}[0-9]{1}$'
    if [ $? -eq 0 ]; then
        echo "$1 is a valid Candadian postal code."
    else
        echo "$1 not a valid code for both the US and Canada"
    fi
fi
