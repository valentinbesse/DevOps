#!/bin/bash
clear

if [ $# -eq 0 ]
then
	echo "Aucun Argument saisi !!!"
	exit 1
fi


case "$1" in
	-a)
		read -p "Saisir un caractere : " car
		if [ "$car" = "D" ]
		then
			date
		else
			ls
		fi
		;;

	-b) read -p "Saisir un entier : " nb
		if [ $nb -ge 100 ]
		then
			echo "$nb >= 100"
		else
			echo "$nb < 100"
    fi
		;;

	-c)
		
		read -p "Saisir un nom de fichier : " fic
		if test -d $fic
 		then
			echo "$fic est un repertoire"
		elif test -f $fic
				then
					echo "$fic est un fichier."
				else
					echo "Inexistant ou ni fichier ni rep !"
		fi
		;;

	 *)
			echo "Option Invalide !!!"
		;;

esac

