#!/bin/bash

ARQ_REDIS=$1
ARQ_APP=$2

#Adicionando repositório da bitnami
helm repo add bitnami https://charts.bitnami.com/bitnami

#Instalação do redis
helm install redis bitnami/redis --values .${ARQ_REDIS} 

#Instalação do guestbook
helm install guestbook .${ARQ_APP}

