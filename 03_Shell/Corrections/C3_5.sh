#!/bin/bash

#Fonction Aide

aide()
{
    echo "-----------------------------------"
    echo "Proto : $0 source destination"
    echo "-----------------------------------"
    echo "Code Retour 1 : Pbme Arguments"
    echo "Code Retour 2 : source et dest identiques"
    echo "Code Retour 3 : Source Inexistante"
    echo "-----------------------------------"
}

if [ $# -ne 2 ]
then 
	echo "2 arguments requis !!"
	aide
	exit 1
fi


if [ "$1" = "$2" ]
then
	echo "source = destination"
	aide
	exit 2
fi


if test ! -e $1
then
	echo "Source $1 Inexistante !!!"
	aide
	exit 3
fi

cp -ir $1 $2 







