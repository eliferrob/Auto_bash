#!/bin/bash
# Script para eliminar archivos temporales en /tmp

echo "Limpiando archivos temporales..."

find /tmp -type f -atime +7 -exec rm {} \;  # Eliminar archivos no accedidos en los últimos 7 días

echo "Archivos temporales eliminados."
