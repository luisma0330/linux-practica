
# 🐧 Entorno de Práctica Linux con Docker

Este documento describe cómo crear, usar y volver a conectarte a un contenedor Docker basado en Ubuntu para practicar comandos de Linux y Bash scripting, guardando los scripts en tu máquina local.

---

## ✅ Requisitos previos

- Tener instalado [Docker](https://www.docker.com/products/docker-desktop)
- Tener una terminal o línea de comandos
- Tener una carpeta local (por ejemplo: `~/linux-practica`)

---

## 🚀 1. Crear carpeta de práctica (en tu máquina)

```bash
mkdir ~/linux-practica
cd ~/linux-practica
```

---

## 🐳 2. Crear y ejecutar el contenedor con volumen montado

```bash
docker run -it   -v $(pwd):/mnt   --name linux-practica   ubuntu bash
```

🔍 Qué hace cada parte:
- `-it`: terminal interactiva
- `-v $(pwd):/mnt`: monta la carpeta actual en `/mnt` dentro del contenedor
- `--name linux-practica`: nombre del contenedor (puedes usarlo después)
- `ubuntu bash`: imagen base con Bash como shell

---

## 📝 3. Guardar scripts dentro del contenedor

Ya dentro del contenedor:

```bash
cd /mnt
nano mi_script.sh
```

O:

```bash
echo -e '#!/bin/bash\necho "Hola mundo!"' > hola.sh
chmod +x hola.sh
./hola.sh
```

> ⚠️ Todos los archivos que guardes en `/mnt` se conservarán en tu máquina local.

---

## 🔁 4. Volver a conectarte después de cerrar el contenedor

Si cerraste el contenedor con `exit`, puedes volver a conectarte así:

```bash
docker start -ai linux-practica
```

---

## 🔎 5. Listar contenedores para verificar

```bash
docker ps -a
```

Busca tu contenedor llamado `linux-practica` y verifica que esté detenido o en ejecución.

---

## 🧼 6. Eliminar el contenedor (si deseas reiniciar todo)

```bash
docker rm linux-practica
```

---

## ✨ Tip opcional: crear alias para reconectar fácilmente

Puedes agregar esto a tu archivo `~/.bashrc` o `~/.zshrc`:

```bash
alias entrar-linux='docker start -ai linux-practica'
```

Luego ejecuta:

```bash
source ~/.bashrc
```

Y cada vez que quieras entrar, simplemente escribe:

```bash
entrar-linux
```

---

¡Listo! Ya tienes un entorno estable para practicar Linux de forma profesional y reutilizable.
