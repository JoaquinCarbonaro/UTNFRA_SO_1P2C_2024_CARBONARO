#!/bin/bash

DISCO="/dev/sda" # Disco de 10GB (sda)
TAM_PRIMARIA="1G" # Tamaño de cada partición primaria
TAM_LOGICA="1G"   # Tamaño de cada partición lógica

# Particionando el disco
echo "Particionando el disco: $DISCO"

sudo fdisk $DISCO << PARTICIONES
n # Crear primera partición primaria
p
1

+$TAM_PRIMARIA
n # Crear segunda partición primaria
p
2

+$TAM_PRIMARIA
n # Crear tercera partición primaria
p
3

+$TAM_PRIMARIA
n # Crear partición extendida
e


# Crear particiones lógicas en la partición extendida
n # Crear primera partición lógica

+$TAM_LOGICA
n # Crear segunda partición lógica

+$TAM_LOGICA
n # Crear tercera partición lógica

+$TAM_LOGICA
n # Crear cuarta partición lógica

+$TAM_LOGICA
n # Crear quinta partición lógica

+$TAM_LOGICA
n # Crear sexta partición lógica

+$TAM_LOGICA
n # Crear séptima partición lógica que usará el resto del espacio


# No especificamos el tamaño, usa el espacio restante automáticamente
w # Escribir cambios
PARTICIONES

echo "Mis particiones:"
sudo fdisk -l $DISCO

# Formatear las particiones con ext4
echo "Formateando las particiones..."
for i in {1..3}; do
    sudo mkfs -t ext4 "${DISCO}${i}" # Formatear particiones primarias
done

for i in {5..11}; do
    sudo mkfs -t ext4 "${DISCO}${i}" # Formatear particiones lógicas
done

# Montar las particiones usando las carpetas ya creadas en el punto A
echo "Montando las particiones..."

# Montar las particiones primarias
for i in {1..3}; do
    MONTAR_DIR="/Examenes-UTN/alumno_1/parcial_${i}" # Usar directorios existentes
    sudo mount "${DISCO}${i}" "$MONTAR_DIR" # Montar partición
    echo "${DISCO}${i} $MONTAR_DIR ext4 defaults 0 0" | sudo tee -a /etc/fstab # Añadir a /etc/fstab para persistencia
done

# Montar las particiones lógicas en las carpetas correspondientes
for i in {5..7}; do
    MONTAR_DIR="/Examenes-UTN/alumno_2/parcial_$((i-4))" # Usar directorios existentes
    sudo mount "${DISCO}${i}" "$MONTAR_DIR" # Montar partición
    echo "${DISCO}${i} $MONTAR_DIR ext4 defaults 0 0" | sudo tee -a /etc/fstab # Añadir a /etc/fstab para persistencia
done

for i in {8..10}; do
    MONTAR_DIR="/Examenes-UTN/alumno_3/parcial_$((i-7))" # Usar directorios existentes
    sudo mount "${DISCO}${i}" "$MONTAR_DIR" # Montar partición
    echo "${DISCO}${i} $MONTAR_DIR ext4 defaults 0 0" | sudo tee -a /etc/fstab # Añadir a /etc/fstab para persistencia
done

# Montar la partición en profesores
MONTAR_DIR="/Examenes-UTN/profesores"
sudo mount "${DISCO}11" "$MONTAR_DIR" # Montar partición
echo "${DISCO}11 $MONTAR_DIR ext4 defaults 0 0" | sudo tee -a /etc/fstab # Añadir a /etc/fstab para persistencia

# Validar el montaje
echo "Validando el montaje..."
df -h | grep Examenes-UTN
