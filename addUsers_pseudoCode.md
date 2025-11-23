## DÉBUT DU SCRIPT : SEULEMENT FICHIER MARKDOWN FAIS EN DEHORS DU TEMPS. 

Afficher un message de bienvenue

### Vérifier argument(s) ont été fournis

  SI aucun argument n'est passé 
 
  ALORS 
    
  - Afficher "Il manque les noms d'utilisateurs en arguments  - Fin du script :("
  - Terminer le script avec code d'erreur 1

FIN SI

### Vérification d'argument(s) dans le systéme
 
  Pour chaque argument présent
  FAIRE

  Si existe dans le systéme 
  ALORS
  
  - afficher message "L"utilisateur existe déjà"

SINON 

 - Créer l'utilisateur 

### Vérification utilisateur créer 

- SI utilisateur créé 

 ALORS

- afficher : "Lutilisateur a été créé :)"

Sinon

- afficher : "L'utilisateur n'a pas été créé"

FIN SI

FIN SI

FIN Pour
