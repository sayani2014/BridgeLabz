#! /bin/bash -x

MAXCOUNT=5
count=1
while [ "$count" -le $MAXCOUNT ];
do
	number[$count]=$((RANDOM%900+100))
	let "count += 1"
done

echo "Random numbers: ${number[*]}"

for (( i = 1; i <= $MAXCOUNT ; i++ ))
do
	for (( j = $i; j <= $MAXCOUNT; j++ ))
	do
		if (( ${number[$i]}>${number[$j]}  )); 
		then
			t=${number[$i]}
			number[$i]=${number[$j]}
			number[$j]=$t
		fi
	done
done

echo "Sorted Numbers "
for (( i=1; i <= $MAXCOUNT; i++ ))
do
echo ${number[$i]}
done

echo "Second minimum value is: " ${number[2]}
echo "Second maximum value is: " ${number[4]}