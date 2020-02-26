#!/bin/bash -x
#declare constant
count1=0
count2=0
count3=0
count4=0
read -p "enter a value:" user
declare -A FlipCoin
FlipCoin=([H]=$count1 [T]=$count2 [HH]=$count3 [HT]=$count4 [TH]=$count5 [TT]=$count6)
#How many times to flip the coin by using loop
for((iter=0;iter<$user;iter++))
do
	checkFlipCoin=$((RANDOM%2))
	case $checkFlipCoin in
		0)
			FlipCoin[H]=$((${FlipCoin[H]}+1))
			;;
		1)
			FlipCoin[T]=$((${FlipCoin[T]}+1))
			;;
	esac
done
for key in "${!FlipCoin[@]}"
do
	echo "${key}:${FlipCoin[$key]}"
done 
PercentageofHead=`echo "scale=2 ; (${FlipCoin[H]}*100)/$user" | bc -l`
echo "Percentage of Head :" $PercentageofHead
PercentageofTail=`echo "scale=2 ; 100-$PercentageofHead" | bc -l`
echo "Percentage of Tail :" $PercentageofTail 
#Store the doublet of flipcoin combination
for((iter=0;iter<$user*2;iter++))
do
	checkFlipCoin=$((RANDOM%4))

	case $checkFlipCoin in	
		0)
			FlipCoin[HH]=$((${FlipCoin[HH]}+1))
			;;
		1)
			FlipCoin[HT]=$((${FlipCoin[HT]}+1))
			;;
		2)
			FlipCoin[TH]=$((${FlipCoin[TH]}+1))
			;;
		3)
			FlipCoin[TT]=$((${FlipCoin[TT]}+1))
			;;
	esac
done
for key in "${!FlipCoin[@]}"
do
   echo "${key}:${FlipCoin[$key]}"
done 
HHPercentage=`echo "scale=2 ; (${FlipCoin[HH]}*100)/($user*2)" | bc -l`
echo "Percentage of HH :" $HHPercentage
TTPercentage=`echo "scale=2 ; (${FlipCoin[TT]}*100)/($user*2)" | bc -l`
echo "Percentage of TT:" $TTPercentage
THPercentage=`echo "scale=2 ;(${FlipCoin[TH]}*100)/($user*2)" | bc -l`
echo "Percentage of TH:" $THPercentage
HTPercentage=`echo "scale=2 ; (${FlipCoin[HT]}*100)/($user*2)" | bc -l`
echo "Percentage of HT:" $HTPercentage
