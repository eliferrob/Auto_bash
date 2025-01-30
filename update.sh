#!/bin/bash
# Script para actualizar el sistema

echo "Iniciando actualización del sistema..."
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y

echo "Actualización completada."
