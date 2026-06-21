#!/bin/bash

#Validar que el usuario haya ingresado el ID del proyecto.
if [ -z "$1" ]; then
    echo "======================================================"
    echo "====[!] ERROR: Falta el ID del proyecto."
    echo "====[+] USO CORRECTO: ./start_lab.sh [GCP_PROJECT_ID]"
    echo "======================================================"
fi

PROJECT_ID=$1

echo "========================================================"
echo "   INICIANDO ENTORNO DE QWIKLABS                        "
echo "========================================================"

#Paso 1: Lanzar el inicio de sesión sin navegador.
echo -e "\n[1/2] Solicitando credenciales temporales..."
gcloud auth login --no-browser

#Paso 2: Vincular el proyecto asignado
echo -e "\n[2/2] Apuntando la terminal al proyecto: $PROJECT_ID..."
gcloud config set project $PROJECT_ID

echo "====================================================="
echo "    [+] ENTORNO CONECTADO Y LISTO PARA TRABAJAR      "
echo "====================================================="
