#!/bin/bash

mkdir CA_remoset
cd CA_remoset
mkdir rootCA
cd rootCA

# Crear CA de raíz
openssl genrsa -out rootCA.key 4096
openssl req -x509 -new -nodes -key rootCA.key -sha256 -days 3650 -out rootCA.crt -subj "/C=ES/ST=Andorra/L=Andorra/O=Remoset/OU=IT Department/CN=remoset.duckdns.org"
cd /CA_remoset

mkdir userCA
cd userCA
# Crear certificado para usuario normal
openssl genrsa -out user.key 2048
openssl req -new -key user.key -out user.csr -subj "/C=ES/ST=Andorra/L=Andorra/O=Remoset/OU=IT Department/CN=user.remoset.duckdns.org"
openssl x509 -req -in user.csr -CA rootCA.crt -CAkey rootCA.key -CAcreateserial -out user.crt -days 3650 -sha256
cd /

mkdir CA_portainer
cd /CA_portainer
mkdir rootCA
cd rootCA

# Crear CA de raíz
openssl genrsa -out rootCA.key 4096
openssl req -x509 -new -nodes -key rootCA.key -sha256 -days 3650 -out rootCA.crt -subj "/C=ES/ST=Andorra/L=Andorra/O=Portainer/OU=IT Department/CN=portainer.remoset.duckdns.org"
cd /CA_portainer

mkdir userCA
cd userCA
# Crear certificado para usuario normal
openssl genrsa -out user.key 2048
openssl req -new -key user.key -out user.csr -subj "/C=ES/ST=Andorra/L=Andorra/O=Portainer/OU=IT Department/CN=user.portainer.remoset.duckdns.org"
openssl x509 -req -in user.csr -CA rootCA.crt -CAkey rootCA.key -CAcreateserial -out user.crt -days 3650 -sha256

cd /

mkdir CA_mariaDB
cd CA_mariaDB
mkdir rootCA
cd rootCA

# Crear CA de raíz
openssl genrsa -out rootCA.key 4096
openssl req -x509 -new -nodes -key rootCA.key -sha256 -days 3650 -out rootCA.crt -subj "/C=ES/ST=Andorra/L=Andorra/O=MariaDB/OU=IT Department/CN=mariadb.remoset.duckdns.org"
cd /CA_mariaDB

mkdir userCA
cd userCA
# Crear certificado para usuario normal
openssl genrsa -out user.key 2048
openssl req -new -key user.key -out user.csr -subj "/C=ES/ST=Andorra/L=Andorra/O=MariaDB/OU=IT Department/CN=user.mariadb.remoset.duckdns.org"
openssl x509 -req -in user.csr -CA rootCA.crt -CAkey rootCA.key -CAcreateserial -out user.crt -days 3650 -sha256

cd /

mkdir CA_php
cd CA_php
mkdir rootCA
cd rootCA

# Crear CA de raíz
openssl genrsa -out rootCA.key 4096
openssl req -x509 -new -nodes -key rootCA.key -sha256 -days 3650 -out rootCA.crt -subj "/C=ES/ST=Andorra/L=Andorra/O=php/OU=IT Department/CN=phpmyadmin.remoset.duckdns.org"
cd /CA_php

mkdir userCA
cd userCA
# Crear certificado para usuario normal
openssl genrsa -out user.key 2048
openssl req -new -key user.key -out user.csr -subj "/C=ES/ST=Andorra/L=Andorra/O=php/OU=IT Department/CN=user.phpmyadmin.remoset.duckdns.org"
openssl x509 -req -in user.csr -CA rootCA.crt -CAkey rootCA.key -CAcreateserial -out user.crt -days 3650 -sha256

cd /

mkdir CA_grafana
cd CA_grafana
mkdir rootCA
cd rootCA

# Crear CA de raíz
openssl genrsa -out rootCA.key 4096
openssl req -x509 -new -nodes -key rootCA.key -sha256 -days 3650 -out rootCA.crt -subj "/C=ES/ST=Andorra/L=Andorra/O=grafana/OU=IT Department/CN=grafana.remoset.duckdns.org"
cd /CA_grafana

mkdir userCA
cd userCA
# Crear certificado para usuario normal
openssl genrsa -out user.key 2048
openssl req -new -key user.key -out user.csr -subj "/C=ES/ST=Andorra/L=Andorra/O=grafana/OU=IT Department/CN=user.grafana.remoset.duckdns.org"
openssl x509 -req -in user.csr -CA rootCA.crt -CAkey rootCA.key -CAcreateserial -out user.crt -days 3650 -sha256

cd /


mkdir CA_prometheus
cd CA_prometheus
mkdir rootCA
cd rootCA

# Crear CA de raíz
openssl genrsa -out rootCA.key 4096
openssl req -x509 -new -nodes -key rootCA.key -sha256 -days 3650 -out rootCA.crt -subj "/C=ES/ST=Andorra/L=Andorra/O=prometheus/OU=IT Department/CN=prometheus.remoset.duckdns.org"
cd /CA_prometheus

mkdir userCA
cd userCA
# Crear certificado para usuario normal
openssl genrsa -out user.key 2048
openssl req -new -key user.key -out user.csr -subj "/C=ES/ST=Andorra/L=Andorra/O=prometheus/OU=IT Department/CN=user.prometheus.remoset.duckdns.org"
openssl x509 -req -in user.csr -CA rootCA.crt -CAkey rootCA.key -CAcreateserial -out user.crt -days 3650 -sha256

cd /


mkdir CA_nginx
cd CA_nginx
mkdir rootCA
cd rootCA

# Crear CA de raíz
openssl genrsa -out rootCA.key 4096
openssl req -x509 -new -nodes -key rootCA.key -sha256 -days 3650 -out rootCA.crt -subj "/C=ES/ST=Andorra/L=Andorra/O=nginx/OU=IT Department/CN=nginx.remoset.duckdns.org"
cd /CA_nginx

mkdir userCA
cd userCA
# Crear certificado para usuario normal
openssl genrsa -out user.key 2048
openssl req -new -key user.key -out user.csr -subj "/C=ES/ST=Andorra/L=Andorra/O=nginx/OU=IT Department/CN=user.nginx.remoset.duckdns.org"
openssl x509 -req -in user.csr -CA rootCA.crt -CAkey rootCA.key -CAcreateserial -out user.crt -days 3650 -sha256

cd /

mkdir CA_omv
cd CA_omv
mkdir rootCA
cd rootCA

# Crear CA de raíz
openssl genrsa -out rootCA.key 4096
openssl req -x509 -new -nodes -key rootCA.key -sha256 -days 3650 -out rootCA.crt -subj "/C=ES/ST=Andorra/L=Andorra/O=omv/OU=IT Department/CN=omv.remoset.duckdns.org"
cd /CA_omv

mkdir userCA
cd userCA
# Crear certificado para usuario normal
openssl genrsa -out user.key 2048
openssl req -new -key user.key -out user.csr -subj "/C=ES/ST=Andorra/L=Andorra/O=omv/OU=IT Department/CN=user.omv.remoset.duckdns.org"
openssl x509 -req -in user.csr -CA rootCA.crt -CAkey rootCA.key -CAcreateserial -out user.crt -days 3650 -sha256




echo "Done!"
