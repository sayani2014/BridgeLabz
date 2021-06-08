#! /bin/bash -x

read -p "Enter a number between 1 to 100: " number
l=0
c=0

for(( i=0 ;i<100; i++ ))
do
	a[i]=$(($i+1))
done
u=$(($number-1))
while [ $l -le $u ]
do
	mid=$(((( $l+$u ))/2 ))
	if (( $number==${a[$mid]} ))
	then
		c=1
		break
	elif (( $number<${a[$mid]} ))
	then
		u=$(($mid-1))	
	else
		l=$(($mid+1))
	fi
done
if [ $c -eq 1 ]
then
	echo “Element found at position $(($mid+1))”
else
	echo “Element not found”
fi