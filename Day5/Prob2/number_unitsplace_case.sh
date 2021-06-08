#!/bin/bash

read -p "Enter a number to know the place value in Indian System: " digit
case $digit in
        1) echo "Units" ;;
        10) echo "Tens" ;;
        100) echo "Hundreds" ;;
        1000) echo "Thousands" ;;
        10000) echo "Ten thousands" ;;
        100000) echo "Lakh" ;;
        1000000) echo "Ten Lakh" ;;
        10000000) echo "Crore";;
	100000000) echo "Ten Crore";;
	1000000000) echo "Arab";;
	10000000000) echo "Ten Arab";;
	*)echo "Invalid input!"
esac	
