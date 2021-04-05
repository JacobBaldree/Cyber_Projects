#!/bin/bash

cat /etc/passwd 




if [ $UID -ge 1000 ]
then 
	echo "You are normal user"
else
	echo "You are a system user"
fi
