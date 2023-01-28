#!/bin/bash

n=$1
power=1
i=0

echo "Powers of 2 less than or equal to 2^$n:"
echo "Number 2^n"

while [[ $((power)) -le $((2**n)) && $((power)) -le 256 ]]; do
  echo "$i $power"
  power=$((power*2))
  i=$((i+1))
done
