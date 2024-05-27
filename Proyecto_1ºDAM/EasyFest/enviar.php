<?php
// Configuración del servidor SMTP para Gmail
ini_set('smtp_server', 'smtp.gmail.com');
ini_set('smtp_port', 587);
ini_set('sendmail_from', 'easyfestcorp@gmail.com');

// Destinatario y asunto del correo electrónico
$to = 'easyfestcorp@gmail.com';
$subject = 'Prueba de correo electrónico desde PHP';

// Contenido del correo electrónico
$message = 'Hola, este es un correo de prueba enviado desde PHP.';

// Encabezados adicionales
$headers = 'From: easyfestcorp@gmail.com' . "\r\n" .
    'Reply-To: easyfestcorp@gmail.com' . "\r\n" .
    'X-Mailer: PHP/' . phpversion();

// Envío del correo electrónico
if (mail($to, $subject, $message, $headers)) {
    echo 'El correo electrónico ha sido enviado exitosamente.';
} else {
    echo 'Error al enviar el correo electrónico.';
}
?>
