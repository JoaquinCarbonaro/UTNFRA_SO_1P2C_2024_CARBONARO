#!/bin/bash

# Crear el grupo gAlumno
echo "Creo grupo gAlumno"
sudo groupadd p1c2_2024_gAlumno

# Crear el grupo gProfesores
echo "Creo grupo gProfesores"
sudo groupadd p1c2_2024_gProfesores

# Crear los usuarios con la misma clave que vagrant
echo "Creo usuario p1c2_2024_A1"
sudo useradd -m -s /bin/bash -g p1c2_2024_gAlumno -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A1

echo "Creo usuario p1c2_2024_A2"
sudo useradd -m -s /bin/bash -g p1c2_2024_gAlumno -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A2

echo "Creo usuario p1c2_2024_A3"
sudo useradd -m -s /bin/bash -g p1c2_2024_gAlumno -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A3

echo "Creo usuario p1c2_2024_P1"
sudo useradd -m -s /bin/bash -g p1c2_2024_gProfesores -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_P1

# Valido que tengan la misma clave
echo "Valido que tengan la misma clave:"
sudo grep -E 'vagrant|p1c2_2024_A1|p1c2_2024_A2|p1c2_2024_A3|p1c2_2024_P1' /etc/shadow | awk -F ':' '{print $2}'

# Ajustar permisos para las carpetas
# Cambiar permisos para /Examenes-UTN/alumno_1
echo "Ajusto permisos en /Examenes-UTN/alumno_1"
sudo chown p1c2_2024_A1:p1c2_2024_gAlumno /Examenes-UTN/alumno_1
sudo chmod 750 /Examenes-UTN/alumno_1  # Dueño rwx, Grupo r-x, Otros ---

# Cambiar permisos para /Examenes-UTN/alumno_2
echo "Ajusto permisos en /Examenes-UTN/alumno_2"
sudo chown p1c2_2024_A2:p1c2_2024_gAlumno /Examenes-UTN/alumno_2
sudo chmod 760 /Examenes-UTN/alumno_2  # Dueño rwx, Grupo rw-, Otros ---

# Cambiar permisos para /Examenes-UTN/alumno_3
echo "Ajusto permisos en /Examenes-UTN/alumno_3"
sudo chown p1c2_2024_A3:p1c2_2024_gAlumno /Examenes-UTN/alumno_3
sudo chmod 700 /Examenes-UTN/alumno_3  # Dueño rwx, Grupo ---, Otros ---

# Cambiar permisos para /Examenes-UTN/profesores
echo "Ajusto permisos en /Examenes-UTN/profesores"
sudo chown p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores
sudo chmod 775 /Examenes-UTN/profesores  # Dueño rwx, Grupo rwx, Otros r-x

# Crear archivos validar.txt usando el formato adecuado
echo "Creo archivo validar.txt en cada carpeta"
sudo -u p1c2_2024_A1 bash -c "whoami > /Examenes-UTN/alumno_1/validar.txt"
sudo -u p1c2_2024_A2 bash -c "whoami > /Examenes-UTN/alumno_2/validar.txt"
sudo -u p1c2_2024_A3 bash -c "whoami > /Examenes-UTN/alumno_3/validar.txt"
sudo -u p1c2_2024_P1 bash -c "whoami > /Examenes-UTN/profesores/validar.txt"

# Validar creación de archivos:
echo "Valido la creacion de archivos validar.txt"
sudo cat /Examenes-UTN/alumno_1/validar.txt
sudo cat /Examenes-UTN/alumno_2/validar.txt
sudo cat /Examenes-UTN/alumno_3/validar.txt
sudo cat /Examenes-UTN/profesores/validar.txt
