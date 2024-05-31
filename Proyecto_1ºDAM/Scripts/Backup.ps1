# Obtiene la ruta del directorio actual donde se encuentra el script
$directorioActual = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

# Crea una ruta completa para el directorio de copia de seguridad dentro del directorio actual
$directorioCopia = Join-Path -Path $directorioActual -ChildPath "copia_seguridad"

# Comprueba si el directorio de copia de seguridad no existe
if (-Not (Test-Path -Path $directorioCopia)) {
    New-Item -ItemType Directory -Path $directorioCopia
}

# Verifica si el directorio xampp existe antes de copiarlo
if (Test-Path -Path "$directorioActual\xampp") {
    # Obtiene la fecha actual en formato yyyy-MM-dd
    $fechaActual = Get-Date -Format yyyy-MM-dd

    # Crea una ruta completa para el directorio de copia de seguridad con la fecha actual
    $directorioCopiaConFecha = Join-Path -Path $directorioCopia -ChildPath $fechaActual

    # Comprueba si el directorio de copia de seguridad con la fecha actual no existe
    if (-Not (Test-Path -Path $directorioCopiaConFecha)) {
        # Crea el directorio de copia de seguridad con la fecha actual
        New-Item -ItemType Directory -Path $directorioCopiaConFecha
    }

    # Copia la carpeta xampp al directorio de copia de seguridad con la fecha actual
    Copy-Item -Path "$directorioActual\xampp" -Destination $directorioCopiaConFecha -Recurse
} else {
    Write-Host "El directorio xampp no existe en la ruta especificada."
}
