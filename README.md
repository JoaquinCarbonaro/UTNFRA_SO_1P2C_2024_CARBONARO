# Sistemas Operativos — Linux, Bash y Administración del Sistema

Repositorio con la resolución práctica del **primer parcial de Arquitectura y Sistemas Operativos** de la Universidad Tecnológica Nacional.

El trabajo fue realizado sobre una máquina virtual Linux y se enfocó en tareas de administración del sistema mediante comandos y scripts Bash, sin uso de interfaz gráfica.

---

## 🎯 Objetivo del proyecto

El objetivo principal fue aplicar conocimientos de administración de sistemas Linux, scripting y automatización de tareas.

El trabajo incluyó:

- Creación de estructuras de directorios.
- Particionamiento de discos.
- Formateo y montaje persistente.
- Creación de usuarios y grupos.
- Configuración de permisos.
- Uso de filtros básicos y avanzados.
- Automatización mediante scripts Bash.
- Registro del historial de comandos.

---

## 🧰 Tecnologías y herramientas utilizadas

- Linux
- Bash
- Shell scripting
- Git
- GitHub
- fdisk / parted
- mkfs
- mount
- fstab
- chmod
- chown
- useradd
- groupadd
- grep
- awk
- curl
- dmidecode
- tree

---

## 📁 Contenido del repositorio

El repositorio contiene scripts y archivos asociados a la resolución del parcial.

De forma general, incluye:

```text
/
├── Punto_A.sh
├── Punto_B.sh
├── Punto_C.sh
├── Punto_D.sh
├── Punto_E.sh
├── Punto_F.sh
├── RTA_ARCHIVOS_Examen/
└── .bash_history
```

---

## 🧩 Puntos desarrollados

### Punto A — Estructuras simétricas

Creación de una estructura de directorios en el sistema de archivos utilizando Bash.

El objetivo fue resolver la generación de carpetas mediante comandos, aplicando buenas prácticas de scripting y evitando tareas manuales desde interfaz gráfica.

---

### Punto B — Particionamiento y montaje

Resolución de tareas relacionadas con discos y particiones.

Incluye:

- Agregado de disco virtual.
- División del disco en particiones.
- Formateo con sistema de archivos `ext4`.
- Montaje de particiones.
- Configuración de montaje persistente mediante `fstab`.

---

### Punto C — Usuarios y permisos

Automatización de la creación de usuarios, grupos y permisos.

Incluye:

- Creación de usuarios.
- Creación de grupos.
- Asignación de usuarios a grupos.
- Configuración de propietarios.
- Configuración de permisos sobre directorios.
- Validación mediante archivos generados por cada usuario.

---

### Punto D — Estructuras asimétricas

Creación de una estructura de carpetas no uniforme utilizando Bash.

El ejercicio permitió aplicar lógica de generación de directorios, expansión de rangos y organización de estructuras complejas.

---

### Punto E — Filtros básicos

Obtención de información del sistema mediante comandos y archivos del sistema operativo.

Incluye:

- Consulta de memoria RAM desde `/proc/meminfo`.
- Consulta de información del chasis mediante `dmidecode`.
- Generación de archivo de salida con información filtrada.

---

### Punto F — Filtros avanzados

Generación de información avanzada del sistema y del repositorio.

Incluye:

- Obtención de IP pública.
- Obtención de usuario.
- Obtención de hash o información del sistema.
- Obtención de URL remota de Git.
- Escritura de resultados en archivo de salida.

---

## 🧠 Conceptos aplicados

Este proyecto aplica conocimientos de:

- Administración básica de Linux.
- Automatización con Bash.
- Manejo de archivos y directorios.
- Particionamiento de discos.
- Montaje persistente.
- Gestión de usuarios.
- Gestión de grupos.
- Permisos del sistema de archivos.
- Uso de comandos del sistema.
- Redirección de salida.
- Filtros con comandos Linux.
- Trabajo con repositorios Git.
- Resolución de tareas mediante scripting.

---

## ▶️ Cómo utilizar el repositorio

1. Clonar el repositorio:

```bash
git clone https://github.com/JoaquinCarbonaro/so-linux-scripting-particiones-usuarios.git
```

2. Ingresar al repositorio:

```bash
cd so-linux-scripting-particiones-usuarios
```

3. Revisar los scripts correspondientes a cada punto.

4. Ejecutar los scripts en una máquina virtual Linux preparada para pruebas.

```bash
bash Punto_A.sh
bash Punto_B.sh
bash Punto_C.sh
bash Punto_D.sh
bash Punto_E.sh
bash Punto_F.sh
```

---

## ✅ Contexto académico

Proyecto desarrollado para la materia **Arquitectura y Sistemas Operativos** de la **Universidad Tecnológica Nacional**.

La resolución se realizó mediante comandos y scripting en Linux, aplicando conocimientos de SysAdmin, administración de recursos del sistema y automatización.

---

## 💡 Lo que demuestra este proyecto

Este proyecto demuestra conocimientos en:

- Linux.
- Bash scripting.
- Administración de usuarios y grupos.
- Permisos sobre archivos y directorios.
- Particionamiento y montaje de discos.
- Automatización de tareas de sistema.
- Uso de comandos de diagnóstico.
- Manipulación de archivos del sistema.
- Trabajo con Git y GitHub.
- Resolución de ejercicios prácticos de Sistemas Operativos.

---

## 👤 Autor

**Joaquín Carbonaro**

GitHub: https://github.com/JoaquinCarbonaro  
LinkedIn: https://www.linkedin.com/in/joaquin-carbonaro

---

## 🧾 Uso

Este repositorio se comparte con fines educativos y de portfolio. Puede utilizarse como referencia para prácticas de Linux, Bash scripting, administración de sistemas y Sistemas Operativos.
