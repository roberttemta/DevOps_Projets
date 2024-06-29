#!/bin/bash
#Description: code to check
#Writting by: Robert T


echo " what do you want:petrol,oil,gas"
read choice
if [[ "$choice" == "petrol" || "$choice" == "oil" || "$choice" == "gas" ]]
then
        echo "how many ltters do you need? (1-2000)"
        read L
        echo " will you like a car wash? (yes/no)"
read wash
if [[ "$liters" == "yes" ]]
then
        echo " proceed with your choice of $liters $choice and a car wash"
else
        echo " proceed with your choice of $liters $choice without a car wash"
fi
else
        echo " invalide choice. please restart all over again. thanks"
fi                                                