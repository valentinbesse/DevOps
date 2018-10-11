#!/bin/bash

nbOpt=0
nbArg=0


for arg in $*
do
	case $arg in
	-*)
		((nbOpt=$nbOpt + 1))
		;;
	*)
		((nbArg=$nbArg +1))
	 	;;		
	esac

done




echo "Il y a $nbOpt Options et $nbArg arguments"

