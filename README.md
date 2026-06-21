# Google Cloud Foundations
# Estructura del Espacio de Trabajo.
*'/scripts': Automatización en Bash para despliegue de VM y redes.
*'/labs': Apuntes y resoluciones de los Qwiklabs
*'/credenciales': Archivos JSON de cuentas de servicio (Aislados por '.gitignore')

##Comandos de supervivencia -gcloud.
-**Listar instancias: ** 'gcloud compute instancies list'
-**Ver logs de un servicio: ** 'gcloud logging read "resource.type=gce_instance"'
-**Cambiar de un proyecto activo: ** 'gcloud config set project [ID_PROYECTO]'

# ADVERTENCIA DE SEGURIDAD:
-Nunca hacer commit de los archivos '.json' que contengan llaves de Service Account.
-Asegurar que el archivo '.gitignore' esté configurado correctamente antes de hacer un push.

