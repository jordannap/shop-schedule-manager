# README

EN FRANCAIS:
Cette application permet de consulter les heures d’ouvertures des magasins.
En tant que visiteur, je peux voir la liste des magasins avec le statut des horaires de ces magasins (par exemple: jour travaillé ou Fermé).
En tant que visiteur, en cliquant sur un magasin de la liste, je peux voir les jours avec les horaires d’ouvertures de ce magasin.
Le 1er jour affiché est en gras et est le jour actuel de la semaine (par exemple, si nous somme les mercredi 14 décembre, le 1er jour affiché sera le Mercredi).
En cliquant sur le bouton « Lang » à droite, je peux sélectionner la langue de mon choix: français ou anglais (grâce à l’internationalisation avec la Gem i18n).
En tant qu’administrateur, je peux créer, modifier, supprimer des magasins et ajouter des horaires d’ouvertures à ces magasins, les modifier et les supprimer. 
Cette application a été crée avec Rails, j’ai ajouté les Gem Devise et i18n.

Pour lancer l’application:
- Allez dans votre Terminal et clonez le repo Github
- Tapez Bundle install
- Tapez rails db:create, rails db:migrate, rails db:seed
- Lancez votre serveur avec rails s 
- Allez sur votre navigateur puis sur votre serveur local


IN ENGLISH:

This app allows you to consult the opening hours of stores.
As a visitor, I can see the list of stores with the schedule status of these stores (for example: working day or Closed).
As a visitor, by clicking on a store in the list, I can see the days with the opening hours of this store.
The 1st day displayed is in bold and is the current day of the week (for example, if it is Wednesday December 14th, the 1st day displayed will be Wednesday).
By clicking on the "Lang" button on the right, I can select the language of my choice: French or English (thanks to internationalization with the Gem i18n).
As an administrator, I can create, modify, delete stores and add opening hours to these stores, modify them and delete them.
This app was created with Rails, I added Gem Devise and Gem i18n.

To launch the app:
- Go to your Terminal and clone the Github repo
- Type Bundle install
- Type rails db:create, rails db:migrate, rails db:seed
- Run your server with rails s
- Go to your browser and then to your local server
