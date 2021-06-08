#! /bin/bash -x

count=1
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
				break
			fi
		done
		if [ $isPrime -eq 1 ]
		then
			#echo "$i"
			
			result[$count]=$i
			count=$(($count+1))
		fi
	fi
done

if [[ $isPrime -eq 0 || $isPrime -eq 1 ]]
then
	echo "Random numbers: " "${result[*]}"
fi