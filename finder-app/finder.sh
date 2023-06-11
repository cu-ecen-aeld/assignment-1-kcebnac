#!/bin/bash

# Checking the input
if [ $# -ne 2 ]
then
    echo "Incorrect number of arguments. 
    Usage: finder.sh PATH_TO_DIRECTORY SEARCH_STRING"
    exit 1
fi

if [ ! -d $1 ]
then 
    echo "No such directory: $1. First argument must represent path to a directory. 
    Usage: finder.sh PATH_TO_DIRECTORY SEARCH_STRING"
    exit 1
fi 

filesdir=$1
searchstr=$2

echo "The number of files are $(grep $searchstr -R $filesdir -c | awk -F: '{ print $1 }' | uniq | wc -l) and the number of matching lines are $(grep $searchstr -R $filesdir | wc -l)"

exit 0