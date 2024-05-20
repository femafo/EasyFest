#!/bin/bash

# Variables
DB_NAME="nombre_de_la_base_de_datos"
DB_USER="usuario"
DB_PASS="contraseña"
BACKUP_PATH="/ruta/a/copias"
DATE=$(date +"%Y%m%d%H%M")
BACKUP_FILE="$BACKUP_PATH/${DB_NAME}_$DATE.sql.gz"

# Crear copia de seguridad
mysqldump -u $DB_USER -p$DB_PASS $DB_NAME | gzip > $BACKUP_FILE

# Subir copia de seguridad a Google Drive
gdrive upload $BACKUP_FILE

# Limpiar copias antiguas (opcional)
find $BACKUP_PATH -type f -mtime +7 -name "*.gz" -exec rm {} \;
