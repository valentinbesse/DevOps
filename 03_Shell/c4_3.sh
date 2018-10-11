#!/bin/bash

grep -q "^$1" /etc/passwd | cut -d: -f1,3,6 --output-delimiter=$'\t'

nbUtil=$(grep "^$1" /etc/passwd|wc -l)
echo "Nombre d'utilisateur(s) : " $nbUtil

cpt=1

for arg in $(grep  "^$1" /etc/passwd)
do
	# Fichier(s) dans toute l'arborescence
	nbFic=$(find $(echo $arg | cut -d: -f6) -type f 2>/dev/null | wc -l)
	nbRep=$(find $(echo $arg | cut -d: -f6) -type d 2>/dev/null | wc -l)
	
	# Fichier(s) uniquement dans le repertoire de connection
	#nbFic=$(ls -l $(echo $arg | cut -d: -f6) | grep -c "^-")
	#nbRep=$(ls -l $(echo $arg | cut -d: -f6) | grep -c "^d")
		
	echo " "
	echo "User $cpt :"
	echo " "
	echo -e "\tUsername : $(echo $arg |cut -d: -f1)"
	echo " "
	echo -e "\tID : $(echo $arg | cut -d: -f3)"
	echo " "
	echo -e "\thome : $(echo $arg | cut -d: -f6)"
	echo " "
	echo -e "\tOn compte $nbFic fichier(s) et $nbRep repertoire(s)"
	echo " "
	echo "--------------------------"

	((cpt++))
done

