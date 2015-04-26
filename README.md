# qualite-logiciel
Projet 4IF de qualité logicel

# Test d'un programme concurrent avec SPIN

## Installation de SPIN

- [Lien téléchargement](http://spinroot.com/spin/Man/README.html#S2)
- Décompresser la cible : `tar -zxf \*.tar.gz`
- Aller dans le dossier décompressé : `cd Spin`
- Aller dans les sources : `cd Src*`
- Pour la compilation, il faut avoir le paquet `bison` installé : `sudo apt-get install bison`
- Compiler : `make`
- Rajouter le programme spin dans les programmes utilisateurs (pour y accéder depuis n'importe où) : `sudo ln -s PATH_ABSOLU_VERS_DOSSIER_SRC/spin /usr/local/bin/`
- Tester en tapant : `spin -V` --> affiche la version de spin

## Tester un programme concurrent

- Tuto pour le langage POMELA concurrent : [Lien vers le site du prof](http://liris.cnrs.fr/~peportie/teaching_2014_2015/sq/gcl/par/spin/parspin.pdf) 
- Lancer `./safety_check.sh file.pml`
- /!\ Cela va créer pas mal de fichiers *pan*, faire ça dans un dossier distinct
