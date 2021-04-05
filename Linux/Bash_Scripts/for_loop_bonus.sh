#!/bin/bash

list=$(echo {0..9})

for x in ${list[@]};
do
  if [ $x = 3 ] || [ $x = 5 ] || [ $x = 7 ]
  then
    echo "This number is: $x"
  fi
done
