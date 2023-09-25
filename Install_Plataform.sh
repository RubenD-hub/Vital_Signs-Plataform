#!/bin/bash

# Funcion para crear contraseñas
rand-str() {
  # Retorna un string alpha-numerico aleatorico dado una longitud

  # Usa: VALUE=$(rand-str $LENGTH)
  #   ó: VALUE=$(rand-str)

    local DEFAULT_LENGTH=64
    local LENGTH=${1:-$DEFAULT_LENGTH}

    LC_CTYPE=C  tr -dc A-Za-z0-9 </dev/urandom | head -c $LENGTH
    # -dc: delete complementary set == delete all except given set
}

clear
msg="
        ======================================
                Instalador Vital Signs                                    
        ======================================                                                
"

tput setaf 128;
printf "$msg"
tput setaf 7;

printf "\n\n\nNecesitaremos algo de información para instalar este sistema\n\n"
printf "Verás entre paréntesis y en $(tput setaf 128)(este color)$(tput setaf 7) la opción por defecto que se selecciona presionando enter.\n"
printf "De lo contrario podrás ingresar manualmente la opción solicitada.\n"
printf "Al final del ingreso de los datos, se vera un resumen antes de seguir con la instalacion.\n\n\n"

read -p "Presiona enter para continuar..."