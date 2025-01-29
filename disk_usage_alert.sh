#!/bin/bash
# Script para verificar el espacio en disco y enviar una alerta si es bajo

THRESHOLD=80  # Umbral del 80%

DISK_USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ "$DISK_USAGE" -gt "$THRESHOLD" ]; then
    echo "Alerta: El espacio en disco ha caído por debajo del $THRESHOLD%. Uso actual: $DISK_USAGE%" | mail -s "Alerta de espacio en disco" admin@example.com
fi
