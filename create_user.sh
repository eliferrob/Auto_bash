#!/bin/bash
# Script para crear un usuario

read -p "Introduce el nombre del usuario: " USERNAME
sudo useradd -m $USERNAME
sudo passwd $USERNAME

echo "Usuario $USERNAME creado con éxito."
