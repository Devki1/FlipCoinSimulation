#!/bin/bash -x
#declare constant
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
count7=0
count8=0
count9=0
count10=0
count11=0
count12=0
count13=0
count14=0
read -p "enter a value:" user
declare -A FlipCoin
FlipCoin=([H]=$count1 [T]=$count2 [HH]=$count3 [HT]=$count4 [TH]=$count5 [TT]=$count6 [HHH]=$count7 [TTT]=$count8 [HHT]=$count9 [THH]=$count10 [HTT]=$count11 [TTH]=$count12 [HTH]=$count13 [THT]=$count14)
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
#Simulator the triplet combination
for((iter=0;iter<$user*3;iter++))
do
   checkFlipCoin=$((RANDOM%6))

   case $checkFlipCoin in  				
		0)		
			FlipCoin[HHH]=$((${FlipCoin[HHH]}+1))
			;;
		1)
			FlipCoin[TTT]=$((${FlipCoin[TTT]}+1))
			;;
		2)
			FlipCoin[HHT]=$((${FlipCoin[HHT]}+1))
			;;
		3)
			FlipCoin[TTH]=$((${FlipCoin[TTH]}+1))
			;;
		4)
			FlipCoin[THT]=$((${FlipCoin[THT]}+1))
			;;
		5)
			FlipCoin[HTH]=$((${FlipCoin[HTH]}+1))
			;;
		6)
			FlipCoin[HTT]=$((${FlipCoin[HTT]}+1))
			;;
		7)
			FlipCoin[THH]=$((${FlipCoin[THH]}+1))
			;;
	esac
done
for key in "${!FlipCoin[@]}"
do
   echo "${key}:${FlipCoin[$key]}"
done 
HHHPercentage=`echo "scale=4 ; (${FlipCoin[HHH]}*100)/($user*3)" | bc -l`
echo "Percentage of HHH :" $HHHPercentage
TTTPercentage=`echo "scale=4 ; (${FlipCoin[TTT]}*100)/($user*3)" | bc -l`
echo "Percentage of TTT:" $TTTPercentage
TTHPercentage=`echo "scale=4 ;(${FlipCoin[TTH]}*100)/($user*3)" | bc -l`
echo "Percentage of TTH:" $TTHPercentage
THTPercentage=`echo "scale=4 ; (${FlipCoin[THT]}*100)/($user*3)" | bc -l`
echo "Percentage of HT:" $THTPercentage
HTTPercentage=`echo "scale=4 ; (${FlipCoin[HTT]}*100)/($user*3)" | bc -l`
echo "Percentage of HTT :" $HTTPercentage
THHPercentage=`echo "scale=4 ; (${FlipCoin[THH]}*100)/($user*3)" | bc -l`
echo "Percentage of TTT:" $THHPercentage
HHTPercentage=`echo "scale=4 ;(${FlipCoin[HHT]}*100)/($user*3)" | bc -l`
echo "Percentage of HHT:" $HHTPercentage
HTHPercentage=`echo "scale=4 ; (${FlipCoin[HTH]}*100)/($user*3)" | bc -l`
echo "Percentage of HTH:" $HTHPercentage


