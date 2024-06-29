#!/bin/bash
#Description: code to check
#Writting by: Robert T

echo "Please enter your age"
read A

if [ -z "$A" ] || ! [[ "$A" =~ ^[0-9]+$ ]]
then
        echo "Please enter a valid integer representing your age."
        exit 1
fi




if [ $A -ge 21 ] && [ $A -lt 90 ]
then
        echo "Welcome to the store, please visite aisle 13 for our specials."
elif [ $A -ge 90 ]
then
        echo "Welcome drink on us"
elif [ $A -lt 10 ]
then
        echo "Who send you here."
else

        echo "Please, go home and drink some juice."
fi