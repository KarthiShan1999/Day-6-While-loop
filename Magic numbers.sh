#!/bin/bash

echo "Think of a number between 1 and 100."

low=1
high=100

while true; do
  mid=$(( (low+high) / 2 ))
  read -p "Is your number less than $mid? (y/n) " answer
  if [[ $answer == "y" ]]; then
    high=$((mid-1))
  elif [[ $answer == "n" ]]; then
    low=$((mid+1))
  else
    echo "Invalid input, please enter y or n."
    continue
  fi

  if [[ $low -eq $high ]]; then
    magic_number=$low
    echo "The magic number is $magic_number"
    break
  fi
done
