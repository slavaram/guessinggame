#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {
  local files_count=$(ls -lA | wc -l)
  let files_count-=1
  echo "Guess the number of files, including hidden, in working directory. Type in the number and then press return. Ctr + C for exit"
  while true
  do
    read guess
    if [[ $guess -eq $files_count ]]
    then
      echo "You are right! Congratulations!"
      break
    elif [[ $guess -gt $files_count ]]
    then
      echo "Too high, try again"
    else
      echo "Too low, try again"
    fi
  done
}

guessinggame
