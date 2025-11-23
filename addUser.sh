#!/bin/bash

#Lancement du script 
echo "===BIENVENU==="


	#Verifier si argument donner 
		#Argument pas présent -> FIN
		if [ $# -eq 0 ] 
		then
	
			echo "Il manque les noms d'utilisateurs en arguments  - Fin du script :( "	
				exit 1
	fi

		#Argument présent  
			for user in "$@"
	do
		#Verifier l'existence dans le systéme
		if  cat /etc/passwd | grep $user > /dev/null
		then
			#Si il existe --> afficher message
			echo "l'utilisateur $user existe déjà"
		
		else
			
			#Si il n'existe pas continuer sans rien afficher 
		
		sudo useradd $user  
			
			#Verification de la création de l'utilisateur
		if cat /etc/passwd | grep $user > /dev/null 
	
	then
				
				#A été créé --> Afficher message
			echo "L'utilisateur $user a été crée :) "
		else		
				#N'a pas été créé --> Afficher message 
			echo "/!\ L'utilisateur $user n'a pas été crée"
		
		fi
	
	fi

done
