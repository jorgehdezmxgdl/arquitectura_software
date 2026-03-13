package mx.gdl.unedl.papelmax;

import java.io.IOException;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;

public class PrimaryController {

    @FXML
    private TextField txtClave;
    @FXML
    private PasswordField txtContrasena;

    private void switchToSecondary() throws IOException {
        App.setRoot("secondary");
    }

    @FXML
    private void btnAcceso(ActionEvent event) {
        String clave = txtClave.getText();
        String pass  = txtContrasena.getText();
        Alert alerta = new Alert(Alert.AlertType.NONE);
        if (clave.equals("admin") && pass.equals("admin")) {
            try {
                alerta.setAlertType(Alert.AlertType.INFORMATION);
                alerta.setTitle("Acceso valido");
                alerta.setContentText("Bienvenido al sistema");
                App.setRoot("secondary");
            } catch (IOException ex) {
                System.getLogger(PrimaryController.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
            }
        } else {
            alerta.setAlertType(Alert.AlertType.ERROR);
            alerta.setTitle("Error");
            alerta.setContentText("Credenciales inválidas");
        }
        alerta.showAndWait();
    }
}
