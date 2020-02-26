#!/bin/bash -x
#declare constant
count_H=0
count_T=0
read -p "enter a value:" user
declare -A FlipCoin	
#How many times to flip the coin by using loop
for((iter=0;iter<$user;iter++))
do
	checkFlipCoin=$((RANDOM%2))
	case $checkFlipCoin in
		0)
			FlipCoin[$iter]="H"
			((Count_H++))
			;;
		1)
			FlipCoin[$iter]="T"
			((Count_T++))
			;;
	esac
done
echo "generate singlet head and tail" ${FlipCoin[@]} 
PercentageofHead=`echo "scale=2 ; ($Count_H*100)/$user" | bc -l`
echo "Percentage of Head :" $PercentageofHead
PercentageofTail=`echo "scale=2 ; ($Count_T*100)/$user" | bc -l`
echo "Percentage of Tail :" $PercentageofTail 
