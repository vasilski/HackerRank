#! /bin/bash

while read country
do
    countries=("${countries[@]}" "$country")
done

for ((i=3; i<=7; i++))
do
    newcountries=("${newcountries[@]}" "${countries[$i]}")
done

echo "${newcountries[@]}"