all: README.md

README.md: guessinggame.sh
	echo "## The Unix Workbench course assignment" > README.md
	echo "\n**Description**: Guess the number of files in the directory." >> README.md
	echo -n "\n**Date**: " >> README.md
	date >> README.md
	echo -n "\n**Number of lines in guessinggame.sh:** " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md
