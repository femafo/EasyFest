# Variables de configuración
$filePath = "C:\ruta\a\archivo"
$mailServer = "smtp.gmail.com"
$mailPort = 587
$mailUser = "easyfestcorp@gmail.com"
$mailPass = "fermindanielaalexivan"
$mailFrom = "easyfestcorp@gmail.com"
$mailTo = "easyfestcorp@gmail.com"

# Verificar si el archivo existe
if (-not (Test-Path -Path $filePath)) {
    # Enviar correo electrónico de notificación
    $emailMessage = @{
        Subject = "Archivo no encontrado"
        Body = "El archivo $filePath no ha sido encontrado en el sistema."
        SmtpServer = $mailServer
        Port = $mailPort
        Credentials = New-Object System.Net.NetworkCredential($mailUser, $mailPass)
        From = $mailFrom
        To = $mailTo
    }
    Send-MailMessage @emailMessage
}
