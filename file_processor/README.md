---
# Projet de recherche de mots dans des fichiers

Ce projet est écrit en Perl et permet de rechercher des mots spécifiques dans des fichiers texte.

## Fonctionnalités principales

- Recherche de mots dans des fichiers texte
- Vérification de l'existence du fichier avant la recherche
- Affichage des lignes contenant le mot recherché

## Utilisation

Pour utiliser ce script, exécutez-le avec deux arguments :

```
perl regex_file.pl chemin_du_fichier "mot_a_rechercher"
```

Par exemple :
```
perl regex_file.pl /var/log/messages "ERROR"
```

Cela recherchera toutes les occurrences du mot "ERROR" dans le fichier /var/log/messages et affichera les lignes corrpondantes.

## Dépendances

Aucune dépendance supplémentaire n'est requise pour cette application.
