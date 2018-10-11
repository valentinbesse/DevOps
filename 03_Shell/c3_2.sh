#!/bin/bash 

read -p "Saisir un nom d'utilisateur : " nomUtil

#if [ -d /home/$nomUtil ]
retour=$(grep -wq "^usr" /etc/passwd $?)	# -q on n'affiche pas la commande et $? on récupère le retour

if [ $retour -eq 0 ]
then
		homeU="/home/$nomUtil/"
		nbElm=$(ls -1 $homeU|wc -l)
		echo -e "Utilisateur : $nomUtil\nHome directory : $homeU\nNombre d'elements : $nbElm"
else
		echo "ERREUR : l'utilisateur n'existe pas."
fi
