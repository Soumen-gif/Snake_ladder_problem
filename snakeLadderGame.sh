echo "welcome to snake ladder game"
startPosition=0
finishPosition=100

POSITION=0
dice()
{
	dieRoll=$((RANDOM % 6 + 1))
	echo "he got the..... $dieRoll"
}
dice
