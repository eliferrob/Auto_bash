#!/bin/bash
# Script para obtener información del sistema

echo "Información del sistema:"
echo "------------------------"
echo "* Fecha: $(date)"
echo "* Carga del sistema: $(uptime)"
echo "* Uso de memoria:"
free -h
echo "* Espacio en disco:"
df -h
echo "* Procesos activos:"
top -n 1
