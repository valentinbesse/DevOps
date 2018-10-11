#!/bin/bash 

if [ $# -le 2 ]	# Uniquement deux arguments
then	
	if [ -f $1 ]	# Le fichier source est bien un fichier
	then
		if [ -f $2 ]	# La destionation est un fichiers
		then
			if [ $1 != $2 ]	# Le fichier source et le fichier destination sont biens different
			then
				read -p "Voulez-vous ecraser le fichier ? o/n " decis
				if [ $decis = "o" ]
				then
					cp $1 $2
				fi
			else
				echo "ERREUR : le nom du fichier source et celui du fichier de destination sont identiques"
			fi
		else
			if [ -d $2 ]
			then
				var=$2/$1
				if [ -f $var ]
				then 
					read "Voulez-vous ecraser le fichier ? o/n " decis
					if [ decis = "o" ]
					then
						cp $1 $var
					fi
				else
					cp $1 $var
				fi
			else
				cp $1 $2
			fi
		fi
	else 
		echo " ERREUR : le fichier source n'existe pas"
	fi
else
	echo "ERREUR : necessite 2 arguments"
fi
