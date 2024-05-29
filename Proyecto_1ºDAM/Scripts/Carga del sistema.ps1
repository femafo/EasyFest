# Umbral de carga
$THRESHOLD = 3.0

# Obtener la carga media del sistema
$LOAD = (Get-WmiObject -Class Win32_Processor | Measure-Object -Property LoadPercentage -Average).Average

# Correo electrónico de advertencia
$EmailFrom = "easyfestcorp@gmail.com"
$EmailTo = "easyfestcorp@gmail.com"
$Password = "fermindanielaalexivan"
$Subject = "Advertencia de carga del sistema"
$Body = "La carga media del sistema ha superado el umbral establecido. Carga actual: $LOAD"

# Verificar si la carga supera el umbral
if ($LOAD -gt $THRESHOLD) {
    # Enviar el correo electrónico de advertencia
    $Credential = New-Object System.Management.Automation.PSCredential ($EmailFrom, (ConvertTo-SecureString -String $Password -AsPlainText -Force))
    Send-MailMessage -From $EmailFrom -To $EmailTo -Subject $Subject -Body $Body -SmtpServer "smtp.gmail.com" -Port 587 -Credential $Credential -UseSsl
} else {
    Write-Warning "La carga del sistema no ha superado el umbral establecido. Carga actual: $LOAD"
}
