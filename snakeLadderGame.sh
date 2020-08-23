echo "welcome to snake ladder game"
startPosition=0
finishPosition=100
hisPosition=0
player1position=0
player2position=0
dice(){
	dieRoll=$((RANDOM % 6 + 1))
        echo "he got......... : $dieRoll"
	choice=$((RANDOM % 3))
	if [ $choice -eq 2 ]
	then
		echo "he got Ladder"
		hisPosition=$(($hisPosition + $dieRoll))
		checkCondition
		dice
	elif [ $choice -eq 1 ]
	then
		echo "he got Snake"
		hisPosition=$(($hisPosition - $dieRoll))
	else
		echo "No play"
	fi
}
checkCondition(){
	if [ $hisPosition -lt 0 ]
	then
		hisPosition=0
	fi
	if [ $hisPosition -eq 100 ]
	then
		echo "his position is 100 and $player won the game.."
		exit
	fi
	if [ $hisPosition -gt 100 ]
	then
		hisPosition=$(($hisPosition - $dieRoll))
	fi
	echo Your position is:$hisPosition
}
playGame(){
	while [ $hisPosition -ne 100 ]
	do
		echo "This is the player $player....."
		if [ $player -eq 1 ]
		then
			hisPosition=$player1position
			dice
			checkCondition
			player1position=$hisPosition
			player=2
		else
			hisPosition=$player2position
			dice
			checkCondition
			player2position=$hisPosition
			player=1
		fi
	done
}
playGame
