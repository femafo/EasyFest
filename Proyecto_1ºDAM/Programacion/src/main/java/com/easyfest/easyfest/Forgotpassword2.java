package com.easyfest.easyfest;

import javafx.event.ActionEvent;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.layout.AnchorPane;

import java.io.IOException;

/**
 * Controlador para la vista de cambio de contraseña en el proceso de recuperación.
 *
 * Esta clase te pide que escribas una nueva contraña y la repitas para tener una mayor seguridad.
 */
public class Forgotpassword2 {
    @javafx.fxml.FXML
    private Button changebid;
    @javafx.fxml.FXML
    private TextField newcontr2;
    @javafx.fxml.FXML
    private TextField newcontr1;
    @javafx.fxml.FXML
    private AnchorPane forgotpassword2;

    /**
     * Método de inicialización, llamado automáticamente después de que se haya cargado el archivo FXML.
     */
    @javafx.fxml.FXML
    public void initialize() {
        // Puedes realizar inicializaciones adicionales aquí si es necesario
    }

    /**
     * Método para manejar de cambio de contraseña.
     * @param actionEvent El evento de acción generado por el botón de cambio de contraseña.
     */
    @javafx.fxml.FXML
    public void changecontrbutton(ActionEvent actionEvent) {
        try {
            // Cargar la vista de inicio de sesión después de cambiar la contraseña
            AnchorPane login = FXMLLoader.load(getClass().getResource("login.fxml"));
            this.forgotpassword2.getChildren().setAll(login);
        } catch (IOException e) {
            // Manejar cualquier excepción de carga de FXML
            throw new RuntimeException(e);
        }
    }
}
