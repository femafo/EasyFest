package com.easyfest.easyfest;

import javafx.event.ActionEvent;
import javafx.scene.control.Button;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TextField;
import javafx.scene.layout.AnchorPane;

/**
 *Este es un  Controlador para la vista de registro.
 *
 * Esta clase Crea y guarda nuevos usuarios.
 */
public class Registro {
    @javafx.fxml.FXML
    private AnchorPane paneregistro;
    @javafx.fxml.FXML
    private TextField passwordid;
    @javafx.fxml.FXML
    private TextField rpasswordid;
    @javafx.fxml.FXML
    private TextField apellidoid;
    @javafx.fxml.FXML
    private DatePicker ndateid;
    @javafx.fxml.FXML
    private TextField emailid;
    @javafx.fxml.FXML
    private TextField nombreid;
    @javafx.fxml.FXML
    private TextField dniid;
    @javafx.fxml.FXML
    private Button registrarsebutton;

    /**
     * Método de inicialización, llamado automáticamente después de que se haya cargado el archivo FXML.
     */
    @javafx.fxml.FXML
    public void initialize() {
        // Puedes realizar inicializaciones adicionales aquí si es necesario
    }

    /**
     * Método para manejar el evento de registro.
     * @param actionEvent El evento de acción generado por el botón de registro.
     */
    @javafx.fxml.FXML
    public void resgistrarse(ActionEvent actionEvent) {
        // Aquí puedes escribir la lógica para manejar el evento de registro
    }
}
