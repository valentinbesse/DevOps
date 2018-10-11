#!/bin/bash 
clear

nbUsers=$(grep "^$1" /etc/passwd|wc -l)

echo "Nb Utilisateurs : $nbUsers"
cpt=1

trap '' 15
for usr in $(grep "^$1" /etc/passwd)
do
	echo "User $cpt"
	((cpt++))
	
	userName=$(echo $usr|cut -d: -f1)
	echo -e  "\tUsername : $userName"

	idUser=$(echo $usr|cut -d: -f3)
	echo -e  "\tId : $idUser"

	userHome=$(echo $usr|cut -d: -f6)
	echo -e  "\thome : $userHome"
	
	#Nb de fichiers dans toute l'arborescence
	nbFic=$(find $userHome -type f 2>/dev/null|wc -l)	
	
	#Nb de Rep du rep de connexion
	nbRep=$(ls -l $userHome|grep -c "^d")
	
	echo "On compte $nbFic fichiers(s) et $nbRep Répertoire(s)"

	echo "-----------------------"
	sleep 3
done > recapUsersAjc
trap 15
echo "fin des Users"

while :
do
	sleep 1 
done








