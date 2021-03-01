# this is the makefile
# Author - Zoe
# Date 3/1/2021
# -----------------
# requirements
# - The title of the project.
# - The date and time at which make was run.
# - The number of lines of code contained in guessinggame.sh.
# !!
# The README.md should be produced entirely from the makefile and should not be edited by hand.
# --------------

# if everything is compiled it should produce the READme file
all: README.md

README.md: guessinggame.sh
	# create the file
	touch README.md
	# add the first line - title of project
	echo "## Title of Project: guessinggame.sh" >> README.md
	# add the date and time of which the make was run
	echo " Make Date:" date>> README.md
	# add the number of lines of code contained in guessinggame.sh
	echo " Number of lines in guessinggame:" date>> README.md
	grep -c '' guessginggame.sh >> README.md
	
# remember the clean
clean:
	rm README.md