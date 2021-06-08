#!/bin/bash

read -p "Enter 3 numbers to perform the arithmetic operations: " a b c
result1=$(( $a + $b * $c ))
echo "$result1"
result2=$(( $a % $b + $c ))
echo "$result2"
result3=$(( $c + $a / $b ))
echo "$result3"
result4=$(( $a * $b + $c ))
echo "$result4"

if [ $result1 -gt $result2 ] && [ $result1 -gt $result3 ] && [ $result1 -gt $result4 ]
then 
	echo "$result1 is the maximum result."
elif [ $result2 -gt $result1 ] && [ $result2 -gt $result3 ] && [ $result2 -gt $result4 ]
then 
	echo "$result2 is the maximum result."
elif [ $result3 -gt $result1 ] && [ $result3 -gt $result2 ] && [ $result3 -gt $result4 ]
then 
	echo "$result3 is the maximum result."
else
	echo "$result4 is the maximum result."
fi

if [ $result1 -lt $result2 ] && [ $result1 -lt $result3 ] && [ $result1 -lt $result4 ]
then 
	echo "$result1 is the minimum result."
elif [ $result2 -lt $result1 ] && [ $result2 -lt $result3 ] && [ $result2 -lt $result4 ]
then 
	echo "$result2 is the minimum result."
elif [ $result3 -lt $result1 ] && [ $result3 -lt $result2 ] && [ $result3 -lt $result4 ]
then 
	echo "$result3 is the minimum result."
else
	echo "$result4 is the minimum result."
fi
