#! /bin/bash -x

i=1
while [ $i -le 100 ]
do
    if (($i%11==0))
    then
	#echo $i
	number[$i]=$i
    fi
    i=$(($i+1))
done
echo "Repeating numbers are: " "${number[*]}"
