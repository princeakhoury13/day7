#!/bin/bash


numbers=()
for i in {1..10}
do
  num=$((RANDOM%1000))
  numbers+=($num)
done

echo "Original array: ${numbers[@]}"
sorted_numbers=($(echo "${numbers[@]}" | tr ' ' '\n' | sort -n))

echo "Sorted array: ${sorted_numbers[@]}"
second_largest=${sorted_numbers[8]}
echo "2nd Largest number: $second_largest"
second_smallest=${sorted_numbers[1]}
echo "2nd Smallest number: $second_smallest"

