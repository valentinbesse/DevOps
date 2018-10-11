#!/bin/bash

# Fonction Aide

aide()
{
	echo "Proto : $0 source destination"
	echo -e "Code retour \n\t1 : problème argument\n\t2 : source identique à la destination\n\t3 : la source inexistancte"
}

if [ "$1" = "-h" ]
then
	aide
	exit 0
fi

if [ $# -ne 2 ]
then 
	echo "ERREUR : 2 arguments sont requis"
	aide
	exit 1
fi

if [ "$1" = "$2" ]
then
	echo "ERREUR : la source est identique à la destination"
	aide
	exit 2
fi

if test ! -e $1
then
	echo "ERREUR : la source $1 est inexistante"
	aide
	exit 3
fi

cp -ir $1 $2
