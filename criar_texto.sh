#! /usr/bin/env bash

#================ Variáveis ================#
TEXTO="./texto"
ARQ="./arquivo.txt"
#===========================================#
#================= Testes ==================#
[[ ! -e $ARQ ]] && >> $ARQ || : > $ARQ
#===========================================#

echo "Quantas vezes deseja repetir o texto?"
read repetir

for (( i=1; i!="$repetir"; i++ )); do
    cat $TEXTO >> $ARQ
done