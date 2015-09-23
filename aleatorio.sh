#!/usr/bin/env bash

# randomInRange
# $1 : inteiro não-negativo : menor valor a ser assumido pelo aleatório
# $2 : inteiro não-negativo : maior valor a ser assumido pelo aleatório
# retorno : inteiro

function aleatorio_no_intervalo {
	menor=$1
	maior=$2

	if test $menor -gt $maior; then
		local temp=$menor
		menor=$maior
		maior=$temp
	fi

	dif=$maior-$menor-1

	echo $(( ( RANDOM % $dif ) + $menor ))
}

