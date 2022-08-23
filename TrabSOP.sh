#!/usr/bin/bash

user=$(whoami)
day=$(date +%A)

# Mostra a versao do programa
if [[ $1 = "-version" ]]
then
	echo 'Atividade SOP, version 0.0.07'
fi

# Mostra uma mensagem na linha de comando
if [[ $1 = "-welcome" ]]
then
	echo "Bem vindo, $user! Hoje é $day!"
fi

# Cria um arquivo de texto no diretorio atual e inseri alguns links que usei para essa atividade
if [[ $1 = "-how" ]]
then
	touch how.txt
	if [ -f "./how.txt" ];
	then
		echo "https://www.youtube.com/watch?v=e7BufAVwDiM" >> ./how.txt
		echo "https://linuxconfig.org/bash-scripting-tutorial-for-beginners" >> ./how.txt
	fi
fi

# Procura em um arquivo de texto, a palavra providenciada
if [[ $1 = "-search" ]]
then
	echo "Nome do arquivo para a pesquisa de texto"
	read nomeArq
	if [[ -f $nomeArq ]]
	then
		echo "Texto para procurar"
		read grepvar
		grep -i $grepvar $nomeArq
	else
		echo "Arquivo não encontrado"
	fi
	
fi

# Mostra todos os comandos disponiveis nos programa
if [[ $1 = "-help" ]]
then
	echo '-help'
	echo '-version'
	echo '-welcome'
	echo '-search'
	echo '-how'
fi