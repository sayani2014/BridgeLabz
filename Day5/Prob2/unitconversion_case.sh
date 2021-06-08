#! /bin/bash -x

read -p "Enter the number for the unit conversion: " number
read -p " Enter 1. Feet to Inch   
       2. Feet to Meter     
       3. Inch to Feet
       4. Meter to Feet option: " digit

case $digit in 
	1)
		feet_to_inch=$number*12
		echo -n "Feet to Inch: " 
		echo "scale=4;$feet_to_inch" | bc  
	;;
	2)
		feet_to_meter=$number/3.281
		echo -n "Feet to Meter: " 
		echo "scale=4;$feet_to_meter" | bc  
	;;
	3)
		inch_to_feet=$number/12
		echo -n "Inch to Feet: " 
		echo "scale=4;$inch_to_feet" | bc  
	;;
	4)
		meter_to_feet=$number*3.281
		echo -n "Meter to feet: " 
		echo "scale=4;$meter_to_feet" | bc  
	;;
	*)
		echo "You have entered the wrong option!"
	;;
esac
