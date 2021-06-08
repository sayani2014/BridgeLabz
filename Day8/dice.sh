#! /bin/bash -x

declare -A dice_number

i=1
j=1
k=1
l=1
m=1
n=1
o=1

while [ "$i" -le 10 ];
do
	x=$((RANDOM%6+1))
	dice_number=( ["key"]=$x )
	#for key in ${!dice_number[@]}
	#do
	#	echo $key$i=${dice_number[$key]}
	#done
	#a=${dice_number[$i]}
	a=$x
	if [ $a -eq 1 ]
	then 	
		j=$(($j+1))
		b=$a
	elif [ $a -eq 2 ]
	then 	
		k=$(($k+1))
		c=$a
	elif [ $a -eq 3 ]
	then 	
		l=$(($l+1))
		d=$a
	elif [ $a -eq 4 ]
	then 	
		m=$(($m+1))
		e=$a
	elif [ $a -eq 5 ]
	then 	
		n=$(($m+1))
		f=$a
	elif [ $a -eq 6 ]
	then 	
		o=$(($o+1))
		x=$a
	fi
	if(($i==10))
	then
		if (( $j==10 ))
		then
			echo "Number that reached the count of 10 maximum times is $a"
		elif (( $k==10 ))
		then
			echo "Number that reached the count of 10 maximum times is $a"
		elif (( $l==10 ))
		then
			echo "Number that reached the count of 10 maximum times is $a"
		elif (( $m==10 ))
		then
			echo "Number that reached the count of 10 maximum times is $a"
		elif (( $n==10 ))
		then
			echo "Number that reached the count of 10 maximum times is $a"
		elif (( $o==10 ))
		then
			echo "Number that reached the count of 10 maximum times is $a"
		else
			i=0
			continue
		fi
	fi
	let "i += 1"
done

if [ $j -lt $k ] && [ $j -lt $l ] && [ $j -lt $m ] && [ $j -lt $n ] && [ $j -lt $o ]
then 
	echo "Number that reached the count of 10 minimum times is $b"
elif [ $k -lt $j ] && [ $k -lt $l ] && [ $k -lt $m ] && [ $k -lt $n ] && [ $k -lt $o ]
then 
	echo "Number that reached the count of 10 minimum times is $c"
elif [ $l -lt $j ] && [ $l -lt $k ] && [ $l -lt $m ] && [ $l -lt $n ] && [ $l -lt $o ]
then 
	echo "Number that reached the count of 10 minimum times is $d"
elif [ $m -lt $j ] && [ $m -lt $k ] && [ $m -lt $l ] && [ $m -lt $n ] && [ $m -lt $o ]
then 
	echo "Number that reached the count of 10 minimum times is $e"
elif [ $n -lt $j ] && [ $n -lt $k ] && [ $n -lt $l ] && [ $n -lt $m ] && [ $n -lt $o ]
then 
	echo "Number that reached the count of 10 minimum times is $f"
else
	echo "Number that reached the count of 10 minimum times is $x"
fi



