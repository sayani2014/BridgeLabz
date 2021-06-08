#! /bin/bash -x

MAXCOUNT=5
count=1
sum=0
i=1
avg=0

while [ "$count" -le $MAXCOUNT ]; do
 number[$count]=$((RANDOM%100))
 sum=$((sum+number[$count]))
 let "count += 1"
done

echo "Random numbers: " "${number[*]}"
echo "Sum: " $sum
avg=$sum/$MAXCOUNT
echo -n "Average: "
echo "scale=2;$avg" | bc

