#!/bin/bash
# Description: 
# Date: Juin 2024
# Written by: Robert T

if [ $# -lt 1 ]
then
        echo "Please provide file name."
        echo "USAGE: $0 [file name]"
        exit 99
fi

FILE_NAME=$1

if [ -f $FILE_NAME]
then 
        echo " File exist"

else
        echo "File does not exist"
        sudo touch $FILE_NAME
        sudo ls $FILE_NAME
        sudo echo" Serge" > $FILE_NAME
        sudo cat $FILE_NAME
fi 


