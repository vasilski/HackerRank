#! /bin/bash
read var
if  [ "$var" = "Y" ] || [ "$var" = "y" ]
then
    echo "YES"
else
    echo "NO"
fi