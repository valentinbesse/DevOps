#!/bin/bash

echo "Saisir 'a' ou 'A' pour afficher 'A bientot'"
echo "Saisir 'b' ou 'B' pour afficher 'Bienvenue'"
echo "Saisir 'c' ou 'C' pour afficher 'Fin'"

read -p "Saisir un caractère : " carac

case $carac in
	[aA]) echo "A bientot"
	;;
	[bB]) echo "Bienvenue"
	;;
	[cC]) echo "Fin"
	;;
	*) echo "ERREUR : caractère non reconnu"
esac
