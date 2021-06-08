#! /bin/bash -x

read -p "Enter any number to print its prime factors: " number

for (( i=2;i<=$number;i++ ))
do
	a=$number%$i
	if (( $a==0 ))
	then
		isPrime=1
		for (( j=2;j<=$i/2;j++ ))
		do
			b=$i%$j
			if (( $b==0 ))
			then
				isPrime=0
				exit 0
			fi
		done
		if [ $isPrime -eq 1 ]
		then
			echo "$i"
		fi
	fi
done
