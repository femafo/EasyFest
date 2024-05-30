<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombre = htmlspecialchars($_POST['nombre']);
    $email = htmlspecialchars($_POST['email']);
    $mensaje = htmlspecialchars($_POST['mensaje']);

    $to = "easyfestcorp@gmail.com";
    $subject = "Nuevo mensaje de contacto";
    $body = "Nombre: $nombre\nEmail: $email\nMensaje:\n$mensaje";
    $headers = "From: no-reply@easyfest.com";

    if (mail($to, $subject, $body, $headers)) {
        echo "Mensaje enviado";
    } else {
        echo "Error al enviar el mensaje";
    }
}
?>
