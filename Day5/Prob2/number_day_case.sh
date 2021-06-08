#!/bin/bash

read -p "Enter a number between 1 to 7 to display the week day: " digit
case $digit in
        1) echo "Sunday" ;;
        2) echo "Monday" ;;
        3) echo "Tuesday" ;;
        4) echo "Wednesday" ;;
        5) echo "Thursday" ;;
        6) echo "Friday" ;;
        7) echo "Saturday" ;;
        *) echo "Wrong input! There are only 7 days in a week.";;
esac	
