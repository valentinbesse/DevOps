#!/bin/bash

echo "Nombre d'argument(s) : $#"

if [ $# -eq 3 ]
then
		echo "Liste d'arguments : $*"
else
		echo "ERREUR : il faut exactement 3 arguments."
fi
