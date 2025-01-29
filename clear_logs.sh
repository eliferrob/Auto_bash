#!/bin/bash
# Script para limpiar archivos log viejos

LOG_DIR="/var/log"
DAYS=30 

find "$LOG_DIR" -type f -name "*.log" -mtime +$DAYS -exec rm -f {} \;

echo "Se han eliminado los logs más antiguos que $DAYS días."
