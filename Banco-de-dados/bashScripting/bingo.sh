#!/bin/bash

# Bingo Number Generator

echo -e "\n~~ Bingo Number Generator ~~\n"
NUMBER=$(( RANDOM % 75 + 1 )) # a variavel RANDOM traz um numero randomico, o sinal de modulo cria um limite de 0 até 74 e o + 1 é o queremos de 0 a 75
TEXT="The next number is,"
if (( $NUMBER <= 15 )) # podemos colocar condições com parenteses duplos e utlizar operadores relacionais comuns 
then 
  echo "$TEXT B:$NUMBER"
elif [[ $NUMBER -le 30 ]] 
then 
  echo "$TEXT I:$NUMBER"
elif (( $NUMBER < 46 ))
then
  echo "$TEXT N:$NUMBER"
elif [[ $NUMBER -lt 61 ]]
then 
  echo "$TEXT G:$NUMBER"
else 
  echo $TEXT O:$NUMBER
fi
