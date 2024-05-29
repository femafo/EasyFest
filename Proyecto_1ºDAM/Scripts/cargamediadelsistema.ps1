# Obtener la carga del sistema
$LOAD = (Get-Counter -Counter "Processor(_Total)\% Processor Time" -SampleInterval 1 -MaxSamples 1).CounterSamples.CookedValue

# Correo electrónico de destino
$EMAIL = "easyfestcorp@gmail.com"

# SMTP Server
$SMTPServer = "smtp.gmail.com"

# SMTP Port
$SMTPPort = 587

# Subject
$subject = "Carga del sistema diaria"

# Body
$body = "La carga media del sistema es: $LOAD"

# Credenciales para el envío de correos electrónicos
$Credential = New-Object System.Management.Automation.PSCredential ("easyfestcorp@gmail.com", (ConvertTo-SecureString "fermindalienaalexivan" -AsPlainText -Force))

# Enviar correo electrónico con la carga media del sistema
Send-MailMessage -To $EMAIL -Subject $subject -Body $body -SmtpServer $SMTPServer -Port $SMTPPort -UseSsl -Credential $Credential
