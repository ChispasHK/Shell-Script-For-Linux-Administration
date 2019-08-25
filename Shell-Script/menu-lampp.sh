#! /bin/bash

#comprovacion de parametros 

if `test $# -ne 0 ` 
then 
	echo "Este shellscript no tiene parametros"
	exit 1;	
fi

#ser root

user=`whoami`

if `test $user = "root"`
then
	
		# el menu
				echo "contraseña 'root' y usuario 'root '"
				echo "Elige una opcion"
				echo ""
				echo "	[1]Inicia LAMPP"
				echo "	[2]Abre el directorio"
				echo "	[3]Para LAMPP"
				#echo "	[4]Abrir la interface grafica LAMPP"
				echo "	[4]Exit"
				
			echo ""
			echo "Escribe el numero"
			read num

			case $num in
				1) /opt/lampp/lampp start ;;
				2) echo "No implementado" ;;
				3) /opt/lampp/lampp stop  ;;
				#4) source /opt/lampp/manager-linux-x64.run ;;
				4) exit 0 ;;
			esac 
		
		# el fin menu
	
else 
	echo "Ejecuta un sudo, para ser ROOT"
	sudo $0;
fi


# termina el shellscript

exit 0;
