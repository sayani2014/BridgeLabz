#! /bin/bash -x

read -p "Enter the length and breadth in feet: " length breadth
converted_length=$length/3.8
converted_breadth=$breadth/3.8
echo "Converted length and breadth in meters is: " 
echo "scale=2;$converted_length" | bc  
echo "scale=2;$converted_breadth" | bc