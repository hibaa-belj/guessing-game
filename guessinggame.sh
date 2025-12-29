#!/usr/bin/env bash

count_files() {
  ls -1 | wc -l
}

file_count=$(count_files)
guess=-1

echo "Guess how many files are in the current directory:"

while [[ $guess -ne $file_count ]]
do
  read guess

  if [[ $guess -lt $file_count ]]
  then
    echo "Too low. Try again:"
  elif [[ $guess -gt $file_count ]]
  then
    echo "Too high. Try again:"
  else
    echo "🎉 Congratulations! You guessed correctly."
  fi
done
