#!/bin/bash

echo "Atualizando servidor...."

apt update
apt upgrade -y

echo "Instalando o apache..."

apt install apache2 -y

echo "Instalando o unzip..."

apt install unzip -y

echo "Baixando aplicação do GitHub na pasta /tmp..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zp

echo "Copiando arquivos para pasta padrão do Apache..."

cd linux-site-dio-main
cp -R * /var/www/html/

echo "Fim"
