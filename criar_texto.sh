#! /usr/bin/env bash


##	  Criar arquivo
##
## Autor: Jeferson Silva de Souza
## Versão: 1.1
##
#=======================================================#
## Esse programa irá criar um arquivo com as 10 melhores
## frase do livro o Guia do Mochileiro da Galaxia.
## Essas frase serão repitidas quantas vezes o usuário
## indicar, para que possa gerar arquivo para teste.
#=======================================================#

#====================== Variáveis ======================#

TEXTO="./texto"
ARQ=~/Documentos/teste/arquivo.txt
ARQ_PATH=~/Documentos/teste/

#======================= Testes ========================#
#Verificar se o diretório "Documentos/teste" existe
[[ ! -d $ARQ_PATH ]] && mkdir $ARQ_PATH

# Verifica se o "arquivo.txt" existe dentro do subdiretório
# Documentos/teste
[[ ! -e $ARQ ]] && >> $ARQ

#====================== Execução =======================#

echo "Quantas vezes deseja repetir o texto?"
read repetir

# Primeiro será verificado se o valor digitado pelo usuário
# é um número inteiro. Caso não seja, o programa será finalizado
if ( echo $repetir | egrep '[^1-9]' &> /dev/null); then
    echo "Somentes números inteiros são permitidos, com exceção de zero!"
else
    for (( i=1; i!="$repetir"; i++ )); do # Irá fazer um loop até o valor digitado pelo usuário
        cat $TEXTO >> $ARQ
    done
fi