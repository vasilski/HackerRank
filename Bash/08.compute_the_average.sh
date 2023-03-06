#! /bin/bash

read r


for ((i=1; i<=$r; i++));
do
read number
 sum=$(($sum + $number))
done

echo $(echo "$sum / $r" | bc -l | awk '{printf "%.3f\n", $0}')

