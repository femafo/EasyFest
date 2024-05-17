package com.easyfest.easyfest;

import javafx.event.ActionEvent;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.Button;
import javafx.scene.layout.AnchorPane;

import java.io.IOException;

public class PagosController {
    @javafx.fxml.FXML
    private AnchorPane pagosid;
    @javafx.fxml.FXML
    private Button addtarjetaid;
    @javafx.fxml.FXML
    private Button vermasid;

    @javafx.fxml.FXML
    public void vermasbutton(ActionEvent actionEvent) {
        try {
            AnchorPane vermas = FXMLLoader.load(getClass().getResource("mostrarallhistorial.fxml"));
            this.pagosid.getChildren().setAll(vermas);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @javafx.fxml.FXML
    public void anadirbutton(ActionEvent actionEvent) {
        try {
            AnchorPane anadirt = FXMLLoader.load(getClass().getResource("addtarjeta.fxml"));
            this.pagosid.getChildren().setAll(anadirt);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
