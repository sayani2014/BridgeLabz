#! /bin/bash -x

powerofTwo=1

read -p "Enter the value of n: " number
i=0

while (( $i<=$number ))
do
	echo "$powerofTwo"
	powerofTwo=`expr 2 \* $powerofTwo`
	i=$i+1
done