README.md: 
	echo "# Guessinggame by Oleg" > README.md
	echo -n "- " >> README.md
	date >> README.md
	echo -n "- Lines count in guessinggame.sh: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

