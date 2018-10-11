#!/bin/bash

while true
do
	if who | grep -wq "^$1"
	then
		break
	fi

	

done

term=$(who | grep -w "^$1" | cut -c10-15)
echo "L'utilisateur $1 est connecté sur le terminal $term"
