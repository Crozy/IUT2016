#! /bin/bash

#Lister les fichiers *.jar
echo $(find . -name \*.java)

#Compter
echo $(find . -name \*.java | wc -l)

#Lister les fichiers et leurs nombre de lignes de texte
find . -name \*.java -exec wc -l {} \;

#Lister les 10 plus gros fichiers java
find . -name \*.java -exec wc -c {} \; | sort -n |tail -10

#Compter le nombre total de ligne de code java
nombre=0;

for i in $(find . -name \*.java -exec wc -l {} \; | cut -f1  -d\  )
do
nombre=$(( $nombre + $i ))
done

echo $nombre
