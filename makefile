all: guessinggame.sh
	echo "# Guess the number of files game" > README.md
	date >> README.md
	echo "\n">> README.md
	cat guessinggame.sh | wc -l | bc  >> README.md
