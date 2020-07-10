#!/usr/bin/env bash
# File: guessinggame.sh

n=$(ls -al | grep ^[^d] | wc -l)

function compare {
  if [[ $1 -gt $2 ]]
  then
    echo "Too high, try again:"
  elif [[ $1 -lt $2 ]]
  then
    echo "Too low, try again:"
  elif [[ $1 -eq $2 ]]
  then
    echo "Congratulations, your guess is correct!"
  fi
}

echo "Guess the number of files in the current directory: "
str=""
while [[ ! $str =~ ^Congratulations ]]
do
  read j
  str=$(compare $j $n)
  echo $str
done
