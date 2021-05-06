#!/usr/bin/env bash
#File: guessinggame.sh

function getInput () {
	echo "Guess how many files are in the current directory:"
	read guess_number
	echo "$guess_number"
}


getInput
echo "Your guess is $guess_number"
num_files=$(ls -l | wc -l)

while [[ $guess_number -ne $num_files ]]
do
	if [[ $guess_number -gt $num_files ]]
	then
		echo "Wrong guess! Guess is too high"
	else
		echo "Worng guess! Guess is too low"
	fi
	getInput
done
echo "Congrulations!"
