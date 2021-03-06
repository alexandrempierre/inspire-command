#!/usr/bin/env bash

# Autor: Alexandre de Alencar Moreira Pierre
# Início: 28 de Agosto de 2015 às 18h56.
#
# Objetivo:
#	Criar um comando para a linha de comando do Unix que
# 	retorne uma frase motivacional aleatória a cada chamada.
#
# MVP:
#	Ao chamar o comando, o programa gerará um número aleatório
#	correspondente a uma posição no Array de frases e imprimirá
#	a frase correspondente à posição para o usuário.
#	O Array estará definido no código do próprio do comando e
#	sua extensão também.
#
# Fim do MVP: 28 de Agosto de 2015 às 22h36.
#
# TODO:
#
# * Pegar frases de um arquivo externo
# * Escrever frases com uma cor diferente como verde, laranja ou azul
# * Acrescentar quebra de linha antes e depois da frase
# * Definir tamanho limite para frase + autor para evitar quebra da frase
# * Comando para adicionar e remover frases do arquivo externo

# $RANDOM retorna um número inteiro aleatório diferente a cada chamada
# Intervalo nominal: 0 - 32767 (inteiro sem sinal de 16 bits)

source aleatorio.sh

frases[0]="Os empreendedores falham, em média, 3,8 vezes antes do sucesso final. O que separa os bem-sucedidos dos outros é a persistência - Lisa M. Amos, executiva"
frases[1]="Da força à injustiça há só um passo - Confúcio"
frases[2]="Não é o mais forte que sobrevive, nem o mais inteligente. Quem sobrevive é o mais disposto à mudança - Charles Darwin, biólogo"
frases[3]="Não ganhe o mundo e perca sua alma; sabedoria é melhor que prata e ouro - Bob Marley"
frases[4]="Quem mais demora a fazer uma promessa é quem a cumpre mais rigorosamente - Jean-Jacques Rousseau"

indice=$(aleatorio_no_intervalo 0 ${#frases[@]})

echo ${frases[$indice]}
