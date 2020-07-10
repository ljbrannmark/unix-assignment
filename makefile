all: README.md

README.md: guessinggame.sh
	echo "## Peer-graded assignment." > README.md
	echo "\nmake was run at the following date and time:" >> README.md
	date >> README.md
	echo "\nNumber of lines of code in guessinggame.sh:" >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean:
	rm README.md
