#! /bin/bash -x

read -p "Enter the stake amount: " stake
read -p "Enter the desired amount: " goal
read -p "Enter the number of trials to perform: " trials

bets=0
wins=0

#repeat trial times
i=0
cash=$stake
while(($i<$trials))
do
	while(($cash>0 && $cash<$goal))
	do
		bets=$(($bets+1))
		toss=$(( RANDOM%2 ))
		if(($toss==0))
		then
			wins=$(($wins+1))
			cash=$(($cash+1)) 
			break          
		else
			cash=$(($cash-1))  
			break       
		fi
	done
	if(($cash==$goal))
	then 	
		echo "Game over."
	fi
	i=$(($i+1))
done

echo "Wins in total trials: " "$wins"
echo "Total trials: " "$trials"
