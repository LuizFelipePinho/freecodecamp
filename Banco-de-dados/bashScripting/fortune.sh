#!/bin/bash

# Program to tell a persons fortune

echo -e "\n~~ Fortune Teller ~~\n"

RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
N=$(( RANDOM % 6 ))

GET_FORTUNE() {
  if [[ ! $1 ]] # $1 é da onde vem o parametro, ! eu n faço ideia do que faz, mas sei q precisa dar true, deve validar se tem algum parametro  
  then
    echo Ask a yes or no question:
  else 
    echo Try again. Make sure it ends with a question mark:
  fi
  read QUESTION

}
until [[ $QUESTION =~ \?$ ]] # enquanto a pergunta não vier com o ultimo sinal de interrogação (?) a função sera chamada, ou seja, equanto for false ele chamará a função. quando der true quer dizer que já temos a pergunta com o sinal de ? ent podemos seguir para o proximo comando 
do
  GET_FORTUNE 
done
echo 
echo ${RESPONSES[$N]}
