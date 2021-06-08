#! /bin/bash 

read -p "Enter the number in inches: " number
converted_number=$number/12
echo -n "Converted number in feet is: " 
echo "scale=2;$converted_number" | bc



