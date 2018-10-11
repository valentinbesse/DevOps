#!/bin/bash


read -p "Votre nom d'utilisateur ?" usr


#if test ! -d /home/$usr

retour=$(grep -wq "^$usr" /etc/passwd;echo $?)
#echo "ret : $retour"

if [ $retour -ne 0 ]
then
	echo "$usr Inexistant"
else
	ls /home/$usr
	nbElm=$(ls -1 /home/$usr|wc -l)
	echo "$nbElm éléments dans votre home "
fi



