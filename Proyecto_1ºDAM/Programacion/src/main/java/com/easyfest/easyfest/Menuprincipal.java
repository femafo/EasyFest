package com.easyfest.easyfest;

import javafx.event.ActionEvent;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.Button;
import javafx.scene.control.ChoiceBox;
import javafx.scene.layout.AnchorPane;

import java.io.IOException;

/**
 * Es la Clase controladora para el menú principal de la aplicación EasyFest.
 * Esta clase te permite ir a otras paginas de la web siendo este el menu principal.
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
     * Inicializa la clase controladora.
     * Este método se llama automáticamente después de que el archivo FXML ha sido cargado.
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
     * Maneja el evento de acción para el botón "Ajustes".
     * Carga el archivo "ajustes.fxml" y lo establece en el contenedor principal.
     *
     * @param actionEvent el evento de acción
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
     * Maneja el evento de acción para el botón "Pagos".
     * Carga el archivo "pagos.fxml" y lo establece en el contenedor principal.
     *
     * @param actionEvent el evento de acción
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
     * Maneja el evento de acción para el botón "Ayuda".
     * Carga el archivo "ayuda.fxml" y lo establece en el contenedor principal.
     *
     * @param actionEvent el evento de acción
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
     * Maneja el evento de acción para el botón "Sobre Nosotros".
     * Carga el archivo "sobrenosotros.fxml" y lo establece en el contenedor principal.
     *
     * @param actionEvent el evento de acción
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
     * Maneja el evento de acción para el botón "Mensajes".
     * Carga el archivo "mensajes.fxml" y lo establece en el contenedor principal.
     *
     * @param actionEvent el evento de acción
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
     * Maneja el evento de acción para el botón "Busqueda".
     * Carga el archivo "busqueda.fxml" y lo establece en el contenedor principal.
     *
     * @param actionEvent el evento de acción
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
     * Maneja el evento de acción para el botón "Inicio".
     * Carga el archivo "inicio.fxml" y lo establece en el contenedor principal.
     *
     * @param actionEvent el evento de acción
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
