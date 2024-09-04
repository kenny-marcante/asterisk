#! /bin/bash

## install php
apt install apt-transport-https lsb-release ca-certificates wget  gnupg2 --yes
wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list

apt update
apt install php7.4  --yes

apt install php7.4-curl php7.4-pgsql --yes

## corrigindo o http
apt purge apache2 --yes
apt install nginx --yes


## postgresql server
curl -fsSL https://www.postgresql.org/media/keys/ACCC4CF8.asc|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/postgresql.gpg
sudo sh -c 'echo "deb https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

apt update
sudo apt install postgresql-16


## docker e docker compose 
apt install docker.io docker-compose --yes
