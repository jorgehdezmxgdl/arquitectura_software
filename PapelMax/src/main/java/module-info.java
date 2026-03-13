module mx.gdl.unedl.papelmax {
    requires javafx.controls;
    requires javafx.fxml;

    opens mx.gdl.unedl.papelmax to javafx.fxml;
    exports mx.gdl.unedl.papelmax;
}
