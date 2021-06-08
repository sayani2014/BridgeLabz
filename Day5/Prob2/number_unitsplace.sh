#!/bin/bash

read -p "Enter a number to know the place value in Indian System: " character
if [ "$character" = "1" ]; 
then
    echo "Units";
elif [ "$character" = "10" ]; 
then
    echo "Tens";
elif [ "$character" = "100" ]; 
then
    echo "Hundreds";
elif [ "$character" = "1000" ]; 
then
    echo "Thousands";
elif [ "$character" = "10000" ]; 
then
    echo "Ten thousands";
elif [ "$character" = "100000" ]; 
then
    echo "Lakhs";
elif [ "$character" = "1000000" ]; 
then
    echo "Ten Lakhs";
elif [ "$character" = "10000000" ]; 
then
    echo "Crore";
elif [ "$character" = "100000000" ]; 
then
    echo "Ten crore";
elif [ "$character" = "1000000000" ]; 
then
    echo "Arab";
elif [ "$character" = "10000000000" ]; 
then
    echo "Ten Arab";
else
    echo "Invalid input!"
fi