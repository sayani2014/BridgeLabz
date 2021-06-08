#! /bin/bash -x

read -p "Enter a number: " n

for (( i=1;i<=n;i++ ))
do
	if [ $i -ne $n ]
	then
		echo -n "1/$i" " + "
	else
		echo -n "1/$i" 
	fi
done