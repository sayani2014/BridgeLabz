#! /bin/bash

randomNumber=$((RANDOM%2))

if [ $randomNumber -eq 1 ]
then
 echo "Its a head! " "$randomNumber"
else
 echo "Its a tail! " "$randomNumber"
fi
