#!/bin/bash

if [ $# -eq 0 ]
then
	echo " ERREUR : aucun argument saisi"
	echo " -a : caractere"
	echo " -b : entier"
	echo " -c : nom de fichier ou dossier"
	exit 1
fi

case $1 in

	-a) read -p "Saisir un caractère : " carac
		if [ "$carac" = D ]
		then 
			date
		else 
			ls -1
		fi
	;;

	-b) read -p "Saisir un entier : " entier
		if [ $entier -lt 100 ]
		then
			echo "$entier est strictement inférieur à 100"
			elif [ $entier -gt 100 ]
			then
				echo "$entier est strictement supérieur à 100"
			else
				echo "$entier est égal à 100"
		fi
	;;

	-c) read -p "Saisir un nom de fichier : " nomFic
		if [ -f $nomFic ]
		then 
			echo "C'est un fichier"
			elif [ -d $nomFic ]
			then
				echo "C'est un dossier"
			else
				echo "ERREUR : le nom saisi est inexistant"
		fi
	;;
	*) echo "ERREUR : option non reconnue"
	;;
esac
