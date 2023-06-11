#!/bin/bash

# Checking the input
if [ $# -ne 2 ]
then
    echo "Incorrect number of arguments. 
    Usage: writer.sh PATH_TO_FILE WRITE_STRING"
    exit 1
fi

writefile=$1
writestr=$2

mkdir -p $(dirname $writefile)
echo $writestr > $writefile

exit 0
