#!/bin/bash
echo -e "\n~~ Questionnaire ~~\n" # para quebrar linha use a flag -e dps de echo e \n

QUESTION1="What's your name?"  # Atribui um valor a uma variavel
echo $QUESTION1 # Printa no terminal a variavel 
read NAME # ler o input do usuario e guarda na variavel

echo Hello $NAME. # printa no terminal a variavel e nesse caso vem junto com hello e n se esqueça do . (ponto)

QUESTION2="Where are you from?"
echo $QUESTION2
read LOCATION

QUESTION3="What's your favorite coding website?"
echo $QUESTION3
read WEBSITE

echo -e "\nHello $NAME from $LOCATION. I learned that your favorite coding website is $WEBSITE!"