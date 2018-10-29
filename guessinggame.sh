function givemerealnum { #function needed by criteria
	realnum=$(ls | wc -l | bc)
}

givemerealnum

finished=0

while [[ $finished -ne 1 ]]
do
	echo -n "Guess a number of files: "
	read guessnum 

	if [[ $guessnum -gt $realnum ]]
	then
		echo "Too high. Try again."

	elif [[ $guessnum -lt $realnum ]]
	then
		echo "Too low. Try again."

	elif [[ $guessnum -eq $realnum ]]
	then
		let finished=finished+1
		echo "Congratulations."
	else
		echo "You entered a wrong number. Try again"
	fi
done
