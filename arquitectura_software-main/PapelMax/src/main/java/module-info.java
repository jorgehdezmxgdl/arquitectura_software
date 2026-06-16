module mx.gdl.unedl.papelmax {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;

    opens mx.gdl.unedl.papelmax to javafx.fxml;
    exports mx.gdl.unedl.papelmax;
    exports mx.gdl.unedl.db;
}
