#!/bin/bash


read -p "Saisir un nombre entier : " nb

#res=$(expr $nb \* 2)
((res = $nb * 2))

echo "Resultat : $res"


echo "Resultat : $(expr $nb \* 2)"
