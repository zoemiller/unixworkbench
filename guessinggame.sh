#!/usr/bin/env bash
# file guessinggame.sh
# Author - Zoe
# Date 3/1/2021
# ---------------- Requirements---------------------
# - When the program starts the user should be asked how many files are in the current directory, and then the user should be prompted for a guess.
# - If the user's answer is incorrect the user should be advised that their guess was either too low or too high and then they should be prompted to try to guess again.
# - If the user's guess is correct then they should be congratulated and the program should end.
# - The program should not end until the user has entered the correct number of files in the current directory.
# - The program should be able to be run by entering bash guessinggame.sh into the console.
# - The program should contain at least one function, one loop, and one if statement.
# - The program should be more than 20 lines of code but less than 50 lines of code.
# ---------------------------------------------------
# ok - to start 

function guess_prompt {
# make your guess
	echo "how many files do you think are in the current directory?"
	read my_guess
	# now find out how many are using the ls commands
	# recall ls will list them, -l is long list, wc is #lines, # words , # characters & name of file
	var_answer=$(ls -l | wc -1)	
	echo "My guess: " $my_guess
}

# now we keep trying until we are correct
while  [[ $my_guess != $var_answer]]
do 
	if [[$my_guess -lt $var_answer]]
	then
		echo "The guess was too low!"
	else
		echo "The guess was too hight!"
	fi
	# get propmted to ask again!
	guess_prompt
done

# now lets congraulate the guesser when they are correct 
if $my_guess==$var_answer
	echo "congratulations you guessed the count! "
fi
	
