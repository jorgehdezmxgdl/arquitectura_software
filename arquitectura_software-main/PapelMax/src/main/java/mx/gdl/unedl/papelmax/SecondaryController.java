package mx.gdl.unedl.papelmax;

import java.io.IOException;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.Label;
import javafx.scene.control.Spinner;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import mx.gdl.unedl.db.DbManager;
import mx.gdl.unedl.model.Producto;

public class SecondaryController {

    private DbManager dbmanager;
    @FXML
    private TextField txtClave;
    @FXML
    private Spinner<Integer> spnCantidad;
    @FXML
    private TableView<Producto> tablaProductos;
    @FXML
    private Label lblTotal;
    @FXML
    private TableColumn<Producto, String> clave;
    @FXML
    private TableColumn<Producto, String> nombre;
    @FXML
    private TableColumn<Producto, Float> precio;
    @FXML
    private TableColumn<Producto, Integer> existencia;
    
    public SecondaryController() {
       dbmanager = new DbManager(false);
       if (!dbmanager.isActivo()) {
           Alert alerta = new Alert
                 (Alert.AlertType.ERROR);
           alerta.setTitle("Error critico");
           alerta.setContentText("La DB no está activa");
           alerta.showAndWait();
       } 
       /*
       clave.setCellValueFactory(new PropertyValueFactory<>("clave"));
       nombre.setCellValueFactory(new PropertyValueFactory<>("nombre"));
       precio.setCellValueFactory(new PropertyValueFactory<>("precio"));
       existencia.setCellValueFactory(new PropertyValueFactory<>("existencia"));
*/   
}
    
    private ObservableList<Producto> insertaElemento(Producto p) {
        ObservableList<Producto> lista = 
                FXCollections.observableArrayList();
        lista.add(p);
        return lista;
    }
    
    private void switchToPrimary() throws IOException {
        App.setRoot("primary");
    }

    @FXML
    private void btnAdicionaProducto(ActionEvent event) {
        Producto p = new Producto();
        p.setDescripcion("Papel para impresoras Canon");
        p.setNombre("Papel de Impresora Bond");
        p.setPrecio(34.23f);
        p.setExistencias(40);
        tablaProductos.setItems(insertaElemento(p));
    }
}