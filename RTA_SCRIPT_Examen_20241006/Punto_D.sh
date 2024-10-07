#!/bin/bash

# Mostrar un mensaje indicando que se va a crear la estructura
echo "Creo estructura en el directorio home: "

# Crear la estructura de directorios en el home del usuario
mkdir -p ~/Estructura_Asimetrica/{{correo,clientes}/cartas_{1..100},correo/carteros_{1..10}}

# Mostrar la estructura creada usando el comando tree
echo "Muestro tree: "
tree ~/Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4
