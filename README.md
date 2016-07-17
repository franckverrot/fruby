## fruby

fruby est un langage de programmation en Français.
Il est entièrement basé sur [mruby](http://www.mruby.org/).

## Sa raison d'être

Aider les tout petits à appréhender la programmation. Même s'il s'avère essentiel de connaître l'anglais pour pouvoir faire une carrière en tant que développeur, ce langage permet de rendre accessible les concepts algorithmiques.

## Exemple

```ruby
renomme :affiche :puts

classe Français
  défini initialize(humeur)
    @humeur = humeur
  fin

  défini réponse
    si (@humeur > 3) == vrai
      "Coucou !"
    sinonsi (@humeur > 2) != faux 
      "Comment ça va ?"
    sinon
      "Bontempi"
    fin
  fin
fin

pour i dans 1...10
  humeur = selon rand(i)
    quand 1..4 alors 1
    quand 5,6  alors 2
    sinon 3
  fin

  affiche Français.new(humeur).réponse
fin
```

## Mise à jour des dépendences

Seul `mruby` est nécessaire pour compiler `fruby`. `fruby` est un script qui
permet de transformer le code source de `mruby` avant la compilation.

Pour cela, voici les étapes nécessaires:

1. Cloner `fruby`
```git clone git@github.com:franckverrot/fruby.git```

2. Ajouter `mruby` en `remote` git
```
cd fruby
git remote add mruby git@github.com:mruby/mruby.git
```

3. `rebase` le dépôt à partir de `mruby`
```
git fetch mruby
git rebase mruby/master
```

4. Lancer le script de mise à jour
```
./fruby.sh
```


## Comment exécuter fruby

```./fruby fruby_test.rb```

## Licence

fruby hérite de fait de la licence de mruby : la licence MIT.

## Auteurs

* Franck Verrot - franck@verrot.fr
