#!/bin/bash

# Thi script will check for permissions on sensitive file paths

files=('/etc/passwd' '/etc/shadow' '/etc/hosts')

for file in ${files[@]}; do
	ls -l $file
done

#################BONUS##################

# check sudo abbilities for each user with home dir

for user in $(ls /home); do
	sudo -lU $user
done
