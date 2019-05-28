create_readme:
	touch README.md
	echo "## guessinggame" > README.md
	echo >> README.md
	echo "build date: `date`" >> README.md
	echo >> README.md
	echo "number of lines: `wc -l guessinggame.sh | tr -dc '0-9'`" >> README.md
