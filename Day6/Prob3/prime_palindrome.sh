#! /bin/bash -x

prime()
{
	flag=0
	for((i=2; i<=$num/2; i++))
	do
		ans=$(( num%i ))
		if [ $ans -eq 0 ]
		then
			flag=1
		fi
	done
	if [ $flag -eq 1 ]
	then
		echo "$num is not prime number."
	else
		echo "$num is a prime number."
	fi
}

palindrome()
{
	number=$num
	reverse=0
	while [ $num -gt 0 ]
	do
		a=`expr $num % 10 `
		num=`expr $num / 10 `
		reverse=`expr $reverse \* 10 + $a`
	done
	num=$reverse
	echo "Palindrome of the entered number is: " $reverse
}

perform()
{
	prime "$num";
	palindrome "$num";
	prime "$num"
}

read -p "Enter a number: " num;
perform "$num";

