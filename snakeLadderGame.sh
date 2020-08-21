echo "welcome to snake ladder game"
startPosition=0
finishPosition=100

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
dice
echo now his  position is $hisPosition
