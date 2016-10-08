#! /bin/bash

nombre=0;

for i in $(find . -name \*.java -exec wc -l {} \; | cut -f1 -d\ )
do
nombre=$(( $nombre + $i ))
done

echo "Nombre de ligne total dans tout les fichiers java : " $nombre

for i in $(find . -name \*.java | wc -l)
do
echo "nombre de fichier java :" $i
done

echo "Liste des fichiers en .java : \n"$(find . -name \*.java)

echo "Liste de fichier en .java avec le nombre de ligne contenut dans chaucun des fichiers: \n" $(find . -name \*.java -exec wc -l {} \;)

echo "Liste des 10 plus gros fichier java \n:" $(ls -S $(find . -name "*.java"));
