module com.easyfest.easyfest {
    requires javafx.controls;
    requires javafx.fxml;


    opens com.easyfest.easyfest to javafx.fxml;
    exports com.easyfest.easyfest;
}