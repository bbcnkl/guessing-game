#!/bin/bash

NUMBER=`find . -maxdepth 1 -type f | wc -l`

function guessIt {
  echo "Enter the number:"
  guess=-1
  re='^[0-9]+$'
  while [[ true ]]
  do
    read guess
    if ! [[ $guess =~ $re ]]
    then
      echo "Error: Not a number. Try again:"
      continue
    elif [[ guess -lt NUMBER ]]
    then
      echo "Your guess $guess is less than the requested number. Try again:"
    elif [[ guess -gt NUMBER ]]
    then
      echo "Your guess $guess is greather than the requested number. Try again:"
    else
      echo "Bravo. You've found the requested number."
      break
    fi
  done
}

echo "Guess the number of files in the current directory"

guessIt
