#!/bin/bash

# Obtener IP pública
IP_PUBLICA=$(curl -s ifconfig.me)

# Obtener nombre de usuario
USUARIO=$(whoami)

# Obtener hash de usuario
HASH_USUARIO=$(sudo grep $USUARIO /etc/shadow | awk -F ':' '{print $2}')

# Obtener URL del repositorio remoto (asegurándose de estar en el contexto correcto)
URL_REPOSITORIO=$(git -C ~/repogit/UTNFRA_SO_1P2C_2024_CARBONARO remote get-url origin)

# Crear el archivo Filtro_Avanzado.txt y agregar la información
{
    echo "Mi IP Publica es: $IP_PUBLICA"
    echo "Mi usuario es: $USUARIO"
    echo "El Hash de mi Usuario es: $HASH_USUARIO"
    echo "La URL de mi repositorio es: $URL_REPOSITORIO"
} > ~/repogit/UTNFRA_SO_1P2C_2024_CARBONARO/RTA_ARCHIVOS_Examen_20241006/Filtro_Avanzado.txt

# Mostrar el contenido del archivo
cat ~/repogit/UTNFRA_SO_1P2C_2024_CARBONARO/RTA_ARCHIVOS_Examen_20241006/Filtro_Avanzado.txt
