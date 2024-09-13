
---
1. [__Download HTML page & Image__]()
> Le script Perl get_webpage.pl utilise LWP::UserAgent pour télécharger le contenu d'une page web spécifiée en ligne de commande, affichant le résultat dans la console.

Exemple d'utilisation :
perl get_webpage.pl https://example.com

> Le script Perl get_webimage.pl est conçu pour télécharger des images depuis une URL donnée et les sauvegarder localement sous un nom spécifié.

Exemple d'utilisation :
perl get_webimage.pl 'https://exemple.com/image.jpg' local_image.jpg'

2. [__Verifier si fichier existe__]()
> Vérifier si les fichiers existent via une liste de fichier dans un tableau.

3. [__Verifier contenu fichier__]()
> Vérifier si une chaine de caractère existe dans une ligne d'un fichier.

4. [__Lire fichier et extraite, changer contenu__]()
> A partir d'un fichier en entrée lire les lignes et extraire une ligne suivant une expression régulière.
> Dans cette ligne si une nouvelle expression régulière trouvée substituer celle ci.

5. [__Lire fichier et trouver contenu__]()
> A partir d'un fichier en entrée lire les lignes pour trouver une expression régulière et l'afficher.

6. [__Lire fichier et trouver regex raccourci__]()
> A partir d'un fichier en entrée lire les lignes pour trouver une expression régulière de type raccourci \W et l'afficher.

7. [__Lire fichier et trouver bloc regex__]()
> A partir d'un fichier en entrée lire les lignes pour trouver une expression régulière groupée () et l'afficher.

8. [__Lire fichier et trouver regex raccourci 2__]()
> A partir d'un fichier en entrée lire les lignes pour trouver une expression régulière groupée () de type raccourci \s \S représentant un espacement et un non-espacement.

9. [__Quantificateur regex__]()
> Trouver une expression régulière sur la base de 5 digit \d{5}.

10. [__Fonction, regex mail, regex standard__]()
> Script helloworld avec une fonction main standard.<br>
> Script mailcheck pour vérifier la conformité d'une adresse mail.<br>
> Script regex qui retrouve dans une chaine de caractère une série de mots. <br>

11. [__Lecture fichier boucle ligne et split dans tableau__]()
> Lecture d'un fichier.<br>
> Boucle while sur les lignes.<br>
> Utilisation de la fonction split sur chaque ligne pour mettre celle dans un tableau (array). <br>

12. [__Join et voir les données avec Data::Dumper__]()
> Sur la base du tuto 13 pour visualiser les données du tableau @values.<br>
> Utiliser la fonction join dans un premier temps puis commenter celle ci.<br>
> Utiliser le package Data::Dumper pour visualiser les données du tableau @values. <br>

13. [__Chomp et suppression des espaces dans Splits__]()
> Sur la base du tuto 14 pour supprimer le retour à la ligne de la dernière valeur.<br>
> Utiliser la fonction Chomp sur la variable $line.<br>
> Pour les espaces entre les valeurs séparées par la virgule pour les stocker proprement dans le tableau. exemple : Rene Descartes ,0.57 , 10072033 <br>

14. [__Push dans un tableau__]()
> Sur la base du tuto 15 pour ajouter chaque ligne dans un tableau.<br>
> Dans un premier temps utiliser la méthode classique avec un compteur.<br>
> Puis utilisation de la fonction push pour ajouter chaque ligne dans un tableau.<br>

15. [__Tableau de tableau__]()
> Sur la base du tuto 16 pour ajouter chaque ligne en tant que tableau dans un tableau.<br>
> Création d'un fichier test.pl pour revoir le tableau à deux dimension avec la notion de référence.<br>
> Dans le fichier main ajouter le tableau de ligne dans un tableau. <br>

16. [__Table de Hash__]()
> Définition d'une table de hash. <br>
> Boucle sur la table de hash. <br>
> L'ordre dans une table de hash n'est pas retenu.<br>

17. [__Itération sur une table de Hash__]()
> Boucle sur la table de hash. <br>
> L'ordre dans une table de hash n'est pas retenu.<br>

18. [__Tableau de table de Hash__]()
> Ajouter un hash dans un array avec push. <br>

19. [__Stocker les données d'un CSV dans une structure de donnée__]()
> Spliter chaque ligne du tableau dans des variables distincts. <br>
> Nommer les clés du hash avec le nom des colonnes. <br>
> Déférencer dans une boucle pour afficher le contenu d'une colonne. <br>

20. [__Valider les données du CSV__]()
> Si une ligne du CSV est vide ne pas la prendre en compte et la générer une alerte. <br>
> Si un champ est manquant sur une ligne alors passer au traitement suivant. <br>
> Si un champ est vide sur une ligne passer à l'itération suivante. <br>
> Définir une référence pour la fonction next pour pointer sur la boucle principale.<br>

20. [__Nettoyer les données du CSV__]()
> Supprimer les espaces en début de ligne avec le regex s/^\s*// .<br>
> Ligne 65 utilisation des simples quote VS double quote.<br>
> Suppression des espaces en fin de ligne avec le regex s/\s*$// <br>
> Suppression des expressions régulières particulières comme les points d'interrogations, le mot approx. et le signe $.<br>

20. [__Révision REGEX__]()
> Sans commentaires.<br>