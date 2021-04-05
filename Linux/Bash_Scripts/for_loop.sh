#!/bin/bash

states=('Colorado' 'Texas' 'Arkansas' 'New_York' 'California')

for S in ${states[@]};
do
  if [ $S = 'Texas' ] || [ $S = 'Arkansas' ]
  then 
    echo "I love the state $S!"
  else
    echo "These states are not my favorite: $S"
  fi
done 
