#! /bin/bash

read a
read b

sum=$(($a + $b))
sum2=$(($a - $b))
sum3=$(($a * $b))
sum4=$(($a / $b))

echo "$sum"
echo "$sum2"
echo "$sum3"
echo "$sum4"