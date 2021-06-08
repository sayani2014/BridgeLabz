#! /bin/bash -x

if [ $# -ne 2 ]
then
    echo "Wrong Number Of Arguments"
    exit
fi

if [ $2 -lt 0 -o $1 -lt 0 ]
then
    echo "Argument One Or Two Is Negative."
    exit
fi

a=$1
b=$2

if [ $a -gt $b ]
then
    t=$a
    a=$b
    b=$t
fi

echo "Prime Numbers In Range [$a, $b] Are:"
echo -ne "["

for i in `seq $a 1 $b`
do
    set -- `factor $i`
    if [ $# -eq 2 ]
    then
        echo -ne "$i,"
    fi
done

echo -e "\b]"