#! /bin/bash

read -p "Enter the length and breadth in feet: " length breadth
calculate_area=$length*$breadth
calculate_area_in_acres=$calculate_area/43560
total_area=$calculate_area_in_acres*25
echo -n "Area of 1 plot in feet is: " 
echo "scale=4;$calculate_area" | bc 
echo -n "Area of 1 plot in acres is: " 
echo "scale=4;$calculate_area_in_acres" | bc
echo -n "Area of 25 such plots in acres is: " 
echo "scale=4;$total_area" | bc
