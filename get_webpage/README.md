Ce script Perl utilise la bibliothèque LWP::UserAgent pour télécharger et afficher le contenu d'une page web spécifiée via URL. 
Voici ses principales caractéristiques :

1. Il importe ls modules nécessaires comme strict, warnings, feature, LWP::UserAgent et open.

2. La fonction get_page_content crée un objet UserAgent, configure les en-têtes HTTP par défaut, envoie une requête GET à l'URL donnée et renvoie le contenu décodé de la réponse.

3. Le script vérifie si un argument (l'URL) est fourni au moment de l'exécution.

4. S'il y a un argument valide, il appelle la fonction get_page_content avec cette URL et affiche le résultat.

5. Le script gère également des erreurs potentielles lors de la récupération de la page.
