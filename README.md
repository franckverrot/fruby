## fruby

fruby est un langage de programmation en Français.
Il est entièrement basé sur [mruby](http://www.mruby.org/).

## Sa raison d'être

Aider les tout petits à appréhender la programmation. Même s'il s'avère essentiel de connaître l'anglais pour pouvoir faire une carrière en tant que développeur, ce langage permet de rendre accessible les concepts algorithmiques.

## Exemple

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

## Comment exécuter fruby

    $ ./fruby.sh

## Licence

fruby hérite de fait de la licence de mruby : la licence MIT.

## Auteurs

* Franck Verrot - franck@verrot.fr
