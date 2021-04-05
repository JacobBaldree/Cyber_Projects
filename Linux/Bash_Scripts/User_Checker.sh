#!/bin/bash

cat /etc/passwd | awk -F: '{if ($3 >= 1000 && $3 < 2000)  print $3}' > ID.txt

	for ID in $(cat ID.txt); do
		id -nu $ID >> Users.txt
	done

	for user in $(cat Users.txt); do
		find /home/$user -name "*.sh"
	done
