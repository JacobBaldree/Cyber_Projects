#!/bin/bash

# Pulls list of User id's from /etc/passwd
cat /etc/passwd | awk -F: '{if ($3 >= 0 && $3 < 2000)  print $3}' > Users2.txt

# Checks to see if the ID is greater or less than 1000
for ID in $(cat Users2.txt); do
	if [ $ID -gt 1000 ]
	  then echo "This user is a normal user"

	  else echo "This is an administator"
	fi

done
