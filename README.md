### Version Française
## Présentation
Premier vrai projet que je publie sur Github. J'aimerais partager moi aussi mon expérience et commencé à créer divers petits outils permettant de gagner du temps. 

J'ai encore beaucoup à apprendre donc soyez indulgent sur la qualité de mon code et du projet en général.

Tous les conseils sont bon à prendre !

Ce projet à pour but de mettre en place en environnement docker pour la programmation d'une application sous symfony.

## Mention
Je me suis inspiré de l'architecture du Youtubeur Grafikart.
https://www.youtube.com/user/grafikarttv

## Environnement

Pour faire fonctionner cet environemment de développement, il vous faudra :
Docker et docker-compose.

## Installation 
Pour installer cette environnement de développement, veuillez suivre les indications ci-dessous :

```
git init
git clone https://github.com/skelirphoteman/docker_symfony_server.git
```

Vous pouvez modifier les variables d'environnement dans le dossier .env .
N'oubliez pas de modifier aussi les informations dans le fichier www/.env pour doctrine.

Vous pourrez ensuite lancé docker-compose

> docker-compose up --build

## Structure
La structure du code fonctionne sous 4 dossiers qui se complémentent avec des fonctions bien définit.

# Command
Regroupe toutes les commandes personnalisé utilisable dans la console symfony.

#Domain
Contient toute la logique de l'application. Il stock toutes les entitées, les répositories et tous ce qui doit fonctionner indépendemment de la couche Http.

#Http
Regroupe toutes les classes qui permet de gérer les couches HTTP (Controller)

#Infrastructure
Définit des outils permettant de communiquer avec les éléments interne de l'application.