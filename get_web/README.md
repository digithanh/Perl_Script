
---
1. [__Download HTML page__]()

Ce script Perl utilise la bibliothèque LWP::UserAgent pour télécharger et afficher le contenu d'une page web spécifiée via URL. 
Voici ses principales caractéristiques :

- Il importe ls modules nécessaires comme strict, warnings, feature, LWP::UserAgent et open.

- La fonction get_page_content crée un objet UserAgent, configure les en-têtes HTTP par défaut, envoie une requête GET à l'URL donnée et renvoie le contenu décodé de la réponse.

- Le script vérifie si un argument (l'URL) est fourni au moment de l'exécution.

- S'il y a un argument valide, il appelle la fonction get_page_content avec cette URL et affiche le résultat.

- Le script gère également des erreurs potentielles lors de la récupération de la page.

2. [__Download Image__]()
### Description

Ce script Perl est conçu pour télécharger des images depuis une URL donnée et les sauvegarder localement sous un nom spécifié.

#### Fonctionnalités principales

- Télécharge une image à partir d'une URL fournie en ligne de commande
- Sauvegarde l'image sous un nom local spécifié
- Utilise LWP::UserAgent et IO::Socket::SSL pour effectuer la connexion et la téléchargement
- Gère les options SSL pour une connexion sécurisée

#### Exemple d'utilisation

``
perl get_webimage.pl 'https://exemple.com/image.jpg' local_image.jpg'
``

#### Prérequis

- Perl installé sur le système
- Modules suivants installés :
 - LWP::UserAgent
 - IO::Socket::SSL

#### Remarques

- Le script vérifie que deux arguments sont fournis (URL et nom de fichier local)