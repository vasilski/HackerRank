#! /bin/bash

while read country
do
    countries=("${countries[@]}" "$country")
done

echo "${countries[@]}"