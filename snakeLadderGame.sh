echo "welcome to snake ladder game"
startPosition=0
finishPosition=100
countdice=1
declare -A play
hisPosition=0
option(){
	choice=$((RANDOM % 3))
	echo "he got ....$choice"
	if [ $choice -eq 2 ]
	then
		echo "Ladder"
		hisPosition=$(($hisPosition + $dieRoll))
	elif [ $choice -eq 1 ]
	then
		echo "Snake"
		hisPosition=$(($hisPosition - $dieRoll))
	else
		echo "No play"
	fi
}
dice()
{
        dieRoll=$((RANDOM % 6 + 1))
        echo "he got ..$dieRoll"
	option
}
while [ $hisPosition -le 100 ]
do
   echo "no of times he throw the dice is...$countdice"
	dice
	if [ $hisPosition -lt 0 ]
	then
		hisPosition=0
	fi
if [ $hisPosition -eq 100 ]
	then
     play[$countdice]=100
		echo "his  position is 100 and he won the game"
		exit
	fi
	if [ $hisPosition -gt 100 ]
	then
	 hisPosition=$(($hisPosition - $dieRoll))
	fi
   play[$countdice]=$hisPosition
	echo his position is:$hisPosition
   countdice=$((countdice + 1))
done
