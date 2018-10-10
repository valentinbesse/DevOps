#!/bin/bash 

read -p "Saisir votre username " usr

echo "Votre Home directory contient : " 
ls /home/$usr


nbElm=$(ls -1 /home/$usr|wc -l)

echo "Votre /home/$usr contient $nbElm éléments"
echo "Votre /home/"$usr" contient "$nbElm" éléments"

