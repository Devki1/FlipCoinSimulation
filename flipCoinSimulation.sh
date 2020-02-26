#!/bin/bash -x
isHead=1
isTail=0
#Generate a two random number
checkflipCoin=$((RANDOM%2))
if((checkflipCoin == isHead))
then
	echo "coin isHead"
else
	echo "coin isTail"
fi 

