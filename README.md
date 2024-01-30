# Jungle Bike



## Introduction

Pour lancer l'application, il est nécessaire d'avoir **Docker** et **Make** installés. Après avoir cloné le dépôt, rendez-vous à la racine du projet et saisissez la commande :

```
make
```
Cette commande chargera toutes les images de tous les conteneurs (**Apache**, **MySQL**, **Adminer**) et les démarrera automatiquement.

Pour arrêter les conteneurs et nettoyer la base de données, tapez :

```
make clean
```

Pour arrêter les conteneurs, nettoyer la base de données et redémarrer les conteneurs, tapez :

```
make re
```

Pour arrêter les conteneurs, nettoyer la base de données, et supprimer toutes les images **Docker** du système, tapez :

```
make fclean
```

Pour visualiser l'application : http://localhost:80

Pour accéder à la base de données graphiquement, ouvrez **Adminer** : http://localhost:8080

Pour vous connecter à **Adminer**, remplissez les informations présentes dans le fichier `.env` du projet.

|                   |               | 
|-------------------|---------------|
|        **Système**|      *_MySQL_*|
|        **Serveur**|         *_db_*|
|    **Utilisateur**|  *_ivanloisy_*|
|   **Mot de passe**|        *_mdp_*|
|**Base de données**|*_jungle-bike_*|


~~Vous pouvez utiliser vos propres valeurs en modifiant le fichier `.env`.~~


## Bases de données

La base de données est créée automatiquement lors du lancement de la commande `make`, et elle inclut déjà quelques éléments issus des documents fournis.

Les détails de la base de données sont décrits dans le fichier `requirements/db/tools/jungle-bike.sql`.

Les connexions et les requêtes à la base de données sont traitées avec PDO, qui offre des fonctionnalités très sécurisées, telles que la méthode `bindParam`, assurant un bon typage des valeurs.

L'utilisation de requêtes préparées avec des paramètres liés offre une certaine protection contre les injections SQL.


## Application

Le code de l'application utilise une structure **MVC** (**Modèle-Vue-Contrôleur**), ce qui permet de bien compartimenter chaque élément du site.

Tout le code du site est compris dans le dossier `./app/.`

+ `./app/index.php` sert de **routeur**.

+ `./app/models` : Contient toute la **logique métier**, avec des classes composées principalement de **getters** et de **setters**.

+ `./app/views` : La partie **affichage**, contenant le code HTML.

+ `./app/controllers` : La partie **Controller**, qui traite les requêtes de l'utilisateur, appelle les fonctions des **Models** et transmet les résultats aux **Views**.
