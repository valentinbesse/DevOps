#!/bin/bash

until who | grep -qw "^$1"
do
	sleep 5
done

term=$(who | grep -w "^$1" | cut -c10-20)

echo "L'utilisateur $1 s'est connecté sur le terminal $term" 
