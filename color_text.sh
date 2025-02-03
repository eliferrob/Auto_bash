#!/bin/bash

# Definir estilos
NONE="\e["         # Ninguno
BOLD="\e[1;"       # Negrita
UNDERLINE="\e[4;"  # Subrayado
RESET="\e[0m"      # Restablecer el color. Tiene que ir SIEMPRE al final del texto

# Definir colores en un array asociativo
declare -A COLORS=(
    ["BLACK"]="30m"
    ["RED"]="31m"
    ["GREEN"]="32m"
    ["YELLOW"]="33m"
    ["BLUE"]="34m"
    ["PURPLE"]="35m"
    ["CYAN"]="36m"
    ["WHITE"]="37m"
)

# Preguntar al usuario por el estilo
echo "Seleccione un estilo:"
echo "0) Ninguno"
echo "1) Negrita"
echo "2) Subrayado"
read -r STYLE

# Asignar el código de estilo
case "$STYLE" in
    0) STYLE_CODE="$NONE" ;;
    1) STYLE_CODE="$BOLD" ;;
    2) STYLE_CODE="$UNDERLINE" ;;
    *) STYLE_CODE="$NONE" ;;  # Por defecto, sin estilo
esac

# Mostrar los colores disponibles
echo "Seleccione un color (ingrese el nombre en mayúsculas):"
for color in "${!COLORS[@]}"; do
    echo "- $color"
done

# Leer el color
read -r COLOR

# Validar que el color existe
if [[ -z "${COLORS[$COLOR]}" ]]; then
    echo "Color inválido. Usando color por defecto (BLANCO)."
    COLOR="WHITE"
fi

# Construir y mostrar el texto con el estilo y color elegidos
echo -e "${STYLE_CODE}${COLORS[$COLOR]}Texto en $COLOR${RESET}"