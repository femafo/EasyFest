document.addEventListener('DOMContentLoaded', function () {
    const form = document.getElementById('contact-form');
    const windowNotice = document.getElementById('window-notice');
    const closeButton = document.getElementById('close-button');

    form.addEventListener('submit', function (event) {
        event.preventDefault(); // Previene el envío del formulario
        windowNotice.style.display = 'flex'; // Muestra la notificación
    });

    closeButton.addEventListener('click', function () {
        windowNotice.style.display = 'none'; // Oculta la notificación
        form.submit(); // Envía el formulario
    });
});
