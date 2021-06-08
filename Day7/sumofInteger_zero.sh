#! /bin/bash -x

read -p "Enter the Total numbers: " number
echo "Enter numbers :"
i=0
while [ $i -lt $number ]
do
    read array[$i]
    i=`expr $i + 1`
done

found=0
for (( i=0;i<=$number-2;i++ ))
do
	for (( j=$i+1;j<=$number-1;j++ ))
	do
		for (( k=$j+1;k<$number;k++ ))
		do
			a=${array[$i]}
			b=${array[$j]}
			c=${array[$k]}
			sum=`echo " $a + $b + $c " | bc`
			if (( $sum==0 ))
			then
				echo "Numbers found: " "$a" "$b" "$c" 
				found=1
				exit 0
			elif (( $sum!=0 ))
			then
				found=0
				continue
			fi
		done
	done
done

if [[ found -eq 0 ]]
then
	echo "Does not exist!"
fi