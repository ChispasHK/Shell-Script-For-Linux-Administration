#! /bin/bash

#comprovacion de parametros 

if `test $# -ne 0 ` 
then 
	echo "Este shellscript no tiene parametros"
	exit 1;	
fi

#ser root

user=`whoami`
mylevel=`runlevel | sed --e 's/ /:/g'| cut -d: -f2`

if `test $user = "root"`
then
	
		# el menu
				clear 
				echo "Estamos en el RunLevel $mylevel"
				echo ""
				echo "Elige una opcion"
				echo "	[0]Exit"
				echo "	[1]Executa el comando top"
				echo "	[4]Executa el RunLevel 4"
				echo "	[5]Executa el RunLevel 5"
				
			echo ""
			echo "Escribe el nuemero"
			read num

			case $num in
				0) exit 0;;
				1) top -d 0,1 -o %MEM ;;
				4) init 4 ;;
				5) init 5 ;;
				

			esac 
		
		# el fin menu
	
else 
	echo "Ejecuta un sudo, para ser ROOT"
	sudo $0;
fi


# termina el shellscript

exit 0;
