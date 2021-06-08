#! /bin/bash -x

i=1
randomNumber=$(( RANDOM%2 ))
if (( $randomNumber == 0 ))
then 
	while (( $i<=11 ))
	do
		echo "Heads"
		i=$i+1
	done
else
	while (( $i<=11 ))
	do
		echo "Tails"
		i=$i+1
	done
fi