#!/bin/bash 


test $# -ge 1 && echo "AU moins 1 arg !!!"
test $# -eq 3 || echo "nb  arg different de 3 !!!"


echo "Nb Arg : $#"
echo -e "\t$1\n$2\n$3\n"


echo $1; echo $2 ; echo $3

