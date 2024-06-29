#!/bin/bash
#
#

if [ $# -lt 1 ]
then
        echo "Please provide directory name."
        echo "USAGE: $0 [Directory name]"
        exit 99
fi


DIR_NAME=$1
if [ -d $DIR_NAME  ]
then
        echo "directory exist"
else
        echo "directory does not exist but creating it"
        mkdir $DIR_NAME
fi