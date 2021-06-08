#! /bin/bash -x

declare -A month
count=1
	while [ "$count" -le 50 ];
	do
		number[$count]=$((RANDOM%12+1))
		if [ ${number[$count]} -eq 1 ]
		then
			month["$count"]="January"
		elif [ ${number[$count]} -eq 2 ]
		then
			month["$count"]="February"
		elif [ ${number[$count]} -eq 3 ]
		then
			month["$count"]="March"
		elif [ ${number[$count]} -eq 4 ]
		then
			month["$count"]="April"
		elif [ ${number[$count]} -eq 5 ]
		then
			month["$count"]="May"
		elif [ ${number[$count]} -eq 6 ]
		then
			month["$count"]="June"
		elif [ ${number[$count]} -eq 7 ]
		then
			month["$count"]="July"
		elif [ ${number[$count]} -eq 8 ]
		then
			month["$count"]="August"
		elif [ ${number[$count]} -eq 9 ]
		then
			month["$count"]="September"
		elif [ ${number[$count]} -eq 10 ]
		then
			month["$count"]="October"
		elif [ ${number[$count]} -eq 11 ]
		then
			month["$count"]="November"
		elif [ ${number[$count]} -eq 12 ]
		then
			month["$count"]="December"
		fi
		let "count += 1"
	done
for key in ${!month[@]}; do
    echo ${key} ${month[${key}]}
done
		
(IFS=$'\n'; sort <<< "${month[*]}") | uniq -c
