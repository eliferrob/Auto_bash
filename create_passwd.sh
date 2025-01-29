#!/bin/bash
# Script para generar una contraseña segura de 16 caracteres

PASSWORD=$(openssl rand -base64 16)
echo "Tu nueva contraseña segura es: $PASSWORD"
