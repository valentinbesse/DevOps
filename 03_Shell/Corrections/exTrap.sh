#!/bin/bash 

trap '' 15 2


until who|grep -qw "^$1"
do

	sleep 5

done

echo "$1 vient de se connecter !!"

term=$(who|grep -w "^$1"|cut -c10-20)

echo "sur le terminal $term"
