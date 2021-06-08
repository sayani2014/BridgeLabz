#! /bin/bash -x

powerofTwo=1

read -p "Enter the value of n: " number
for (( i=0;i<=$number;i++ ))
do
	echo "$powerofTwo"
	powerofTwo=`expr 2 \* $powerofTwo`
done