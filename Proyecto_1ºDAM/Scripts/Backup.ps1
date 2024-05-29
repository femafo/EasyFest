# Variables de configuración
$DB_NAME = "Easyfest"
$DB_USER = "root"
$DB_PASSWORD = ""
$BACKUP_DIR = "C:\ruta\a\la\carpeta_de_backup"
$BACKUP_FILE = "backup_${DB_NAME}_$(Get-Date -Format yyyyMMdd).sql.gz"
$REMOTE_DIR = "remote:Easyfest_backups"

# Buscar la ruta de mysqldump.exe
$mysqldumpExe = Get-Command -Name mysqldump.exe -ErrorAction SilentlyContinue
if (!$mysqldumpExe) {
    Write-Error "No se encontró mysqldump.exe en la ruta del sistema"
    exit 1
}

# Crear la copia de seguridad y comprimirla
& $mysqldumpExe -u $DB_USER -p$DB_PASSWORD $DB_NAME | gzip > $BACKUP_DIR\$BACKUP_FILE

# Buscar la ruta de rclone.exe
$rcloneExe = Get-Command -Name rclone.exe -ErrorAction SilentlyContinue
if (!$rcloneExe) {
    Write-Error "No se encontró rclone.exe en la ruta del sistema"
    exit 1
}

# Subir la copia de seguridad al almacenamiento remoto
& $rcloneExe copy $BACKUP_DIR\$BACKUP_FILE $REMOTE_DIR
