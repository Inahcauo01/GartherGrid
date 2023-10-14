# Gather Grid

Ce projet Java EE, nommé "GatherGrid," est une application web basée sur Java. Il utilise Maven comme système de gestion de dépendances et de construction.

## Configuration du Projet

Le fichier `pom.xml` contient la configuration principale du projet. Voici quelques détails importants de la configuration du projet :

- **Groupe et Artefact :** Ce projet est enregistré sous le groupe `com.example` et l'artefact `F34TUR3S`.

- **Version :** La version actuelle du projet est `1.0-SNAPSHOT`.

- **Emballage :** Le projet est empaqueté au format "war" (Web Application Archive), indiquant qu'il s'agit d'une application web Java EE.

- **Propriétés :** Le fichier `pom.xml` définit différentes propriétés, telles que la version de Java cible, la source, et la version de JUnit.

- **Dépendances :** Le projet inclut plusieurs dépendances, notamment :
  - MySQL Connector pour la gestion des bases de données.
  - Jakarta Servlet API pour la création de servlets Java EE.
  - Hibernate Core pour la persistance des données.
  - JAXB Runtime pour le traitement des données XML.
  - JUnit 5 pour les tests unitaires.

- **Plugin de construction :** Le plugin `maven-war-plugin` est utilisé pour la construction de l'archive WAR.

## Prérequis

Assurez-vous d'avoir les éléments suivants installés avant de travailler sur ce projet :
- [Java Development Kit (JDK)](https://www.oracle.com/java/technologies/javase-downloads.html)
- [Apache Maven](https://maven.apache.org/download.cgi)
- Un serveur d'application Java EE, tel que [Apache Tomcat](http://tomcat.apache.org/)

## Comment Utiliser le Projet

1. Clonez ce référentiel sur votre machine locale.
2. Importez le projet dans votre environnement de développement Java EE, tel qu'IntelliJ IDEA ou Eclipse.
3. Configurez votre serveur d'application pour déployer l'application web.
4. Exécutez le projet pour tester l'application.

## Contributions

Les contributions à ce projet sont les bienvenues. N'hésitez pas à ouvrir des problèmes, à proposer des demandes d'extraction et à contribuer au code.

