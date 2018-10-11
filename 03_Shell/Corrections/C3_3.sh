#!/bin/bash 

read -p "Saisir un caractere : " car

case $car in
	[Aa])
		echo "A bientot "
		;;
	[Bb])
		echo "Bienvenue "
		;;
	c|C)
		echo "Fin "
		;;
	*)
		echo "Option Invalide "
		;;
esac





