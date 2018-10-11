#!/bin/bash

cptArg=0
cptOpt=0


for elmt in $*
do
	case $elmt in
	-*)	((cptOpt=$cptOpt+1))
		;;
	*) ((cptArg=$cptArg+1))
		;;
	esac
done

echo "Il y a $cptOpt option(s) et $cptArg argument(s)"
