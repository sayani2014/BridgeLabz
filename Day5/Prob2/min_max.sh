#! /bin/bash -x

MAXCOUNT=5
count=1

while [ "$count" -le $MAXCOUNT ];
do
 number[$count]=$((RANDOM%1000))
 let "count += 1"
done

echo "Random numbers: ${number[*]}"

max=${number[1]}
min=${number[1]}

for i in "${number[@]}"
do
    if [[ "$i" -gt "$max" ]]; then
        max="$i"
    fi
    if [[ "$i" -lt "$min" ]]; then
        min="$i"
    fi
done

# Output results:
echo "Max is: $max"
echo "Min is: $min"

