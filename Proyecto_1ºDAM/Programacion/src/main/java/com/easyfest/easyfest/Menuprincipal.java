package com.easyfest.easyfest;

import javafx.event.ActionEvent;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.Button;
import javafx.scene.control.ChoiceBox;
import javafx.scene.layout.AnchorPane;

import java.io.IOException;

/**
 * Controller class for the main menu of the EasyFest application.
 * This class handles the navigation between different views.
 */
public class Menuprincipal
{
    @javafx.fxml.FXML
    private Button mensajesId;
    @javafx.fxml.FXML
    private Button ayudaId;
    @javafx.fxml.FXML
    private Button ajustesId;
    @javafx.fxml.FXML
    private ChoiceBox chbUsuario;
    @javafx.fxml.FXML
    private Button busquedaId;
    @javafx.fxml.FXML
    private Button inicioId;
    @javafx.fxml.FXML
    private Button pagosId;
    @javafx.fxml.FXML
    private Button sobreNosotrosId;
    @javafx.fxml.FXML
    private AnchorPane contenedorId;

    /**
     * Initializes the controller class.
     * This method is automatically called after the FXML file has been loaded.
     */
    @javafx.fxml.FXML
    public void initialize() {
        try {
            AnchorPane inicio = FXMLLoader.load(getClass().getResource("inicio.fxml"));
            this.contenedorId.getChildren().setAll(inicio);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * Handles the action event for the "Ajustes" button.
     * Loads the "ajustes.fxml" file and sets it to the main container.
     *
     * @param actionEvent the action event
     */
    @javafx.fxml.FXML
    public void ajustesbutton(ActionEvent actionEvent) {
        try {
            AnchorPane ajustes = FXMLLoader.load(getClass().getResource("ajustes.fxml"));
            this.contenedorId.getChildren().setAll(ajustes);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * Handles the action event for the "Pagos" button.
     * Loads the "pagos.fxml" file and sets it to the main container.
     *
     * @param actionEvent the action event
     */
    @javafx.fxml.FXML
    public void pagosbutton(ActionEvent actionEvent) {
        try {
            AnchorPane pagos = FXMLLoader.load(getClass().getResource("pagos.fxml"));
            this.contenedorId.getChildren().setAll(pagos);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * Handles the action event for the "Ayuda" button.
     * Loads the "ayuda.fxml" file and sets it to the main container.
     *
     * @param actionEvent the action event
     */
    @javafx.fxml.FXML
    public void ayudabutton(ActionEvent actionEvent) {
        try {
            AnchorPane ayuda = FXMLLoader.load(getClass().getResource("ayuda.fxml"));
            this.contenedorId.getChildren().setAll(ayuda);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * Handles the action event for the "Sobre Nosotros" button.
     * Loads the "sobrenosotros.fxml" file and sets it to the main container.
     *
     * @param actionEvent the action event
     */
    @javafx.fxml.FXML
    public void sobrenosotrosbutton(ActionEvent actionEvent) {
        try {
            AnchorPane sobrenosotros = FXMLLoader.load(getClass().getResource("sobrenosotros.fxml"));
            this.contenedorId.getChildren().setAll(sobrenosotros);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * Handles the action event for the "Mensajes" button.
     * Loads the "mensajes.fxml" file and sets it to the main container.
     *
     * @param actionEvent the action event
     */
    @javafx.fxml.FXML
    public void mensajesbutton(ActionEvent actionEvent) {
        try {
            AnchorPane mensajes = FXMLLoader.load(getClass().getResource("mensajes.fxml"));
            this.contenedorId.getChildren().setAll(mensajes);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * Handles the action event for the "Busqueda" button.
     * Loads the "busqueda.fxml" file and sets it to the main container.
     *
     * @param actionEvent the action event
     */
    @javafx.fxml.FXML
    public void busquedabutton(ActionEvent actionEvent) {
        try {
            AnchorPane busqueda = FXMLLoader.load(getClass().getResource("busqueda.fxml"));
            this.contenedorId.getChildren().setAll(busqueda);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * Handles the action event for the "Inicio" button.
     * Loads the "inicio.fxml" file and sets it to the main container.
     *
     * @param actionEvent the action event
     */
    @javafx.fxml.FXML
    public void iniciobutton(ActionEvent actionEvent) {
        try {
            AnchorPane inicio = FXMLLoader.load(getClass().getResource("inicio.fxml"));
            this.contenedorId.getChildren().setAll(inicio);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
