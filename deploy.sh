#!/bin/sh

# Make sure the user runs this as root
if [ "$(id -u)" -ne 0 ]
then
    echo "You must run this script as root"
    exit 0
fi
echo "Carregando dependencias"
mix deps.get
echo "Criando banco de dados"
mix ecto.create