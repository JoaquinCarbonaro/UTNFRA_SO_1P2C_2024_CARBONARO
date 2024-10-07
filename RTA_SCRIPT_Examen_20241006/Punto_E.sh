#!/bin/bash

# Crear el archivo y añadir la memoria total
echo "$(sudo grep MemTotal /proc/meminfo | awk '{print}')" > ~/repogit/UTNFRA_SO_1P2C_2024_CARBONARO/RTA_ARCHIVOS_Examen_20241006/Filtro_Basico.txt

# Agregar información del chasis al archivo
echo "Chassis Information" >> ~/repogit/UTNFRA_SO_1P2C_2024_CARBONARO/RTA_ARCHIVOS_Examen_20241006/Filtro_Basico.txt
echo "Manufacturer: $(sudo dmidecode -t chassis | grep 'Manufacturer' | awk '{print $2, $3}')" >> ~/repogit/UTNFRA_SO_1P2C_2024_CARBONARO/RTA_ARCHIVOS_Examen_20241006/Filtro_Basico.txt

# Mostrar el contenido del archivo
cat ~/repogit/UTNFRA_SO_1P2C_2024_CARBONARO/RTA_ARCHIVOS_Examen_20241006/Filtro_Basico.txt
