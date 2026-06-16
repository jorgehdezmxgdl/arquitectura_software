package mx.gdl.unedl.dto;

import java.util.List;

import mx.gdl.unedl.data.Producto;

public class ProveedorProductosDTO {
    private Integer idProveedor;
    private String nombreEmpresa;
    private List<Producto> productosSurtidos;

    public ProveedorProductosDTO(Integer idProveedor, String nombreEmpresa, List<Producto> productosSurtidos) {
        this.idProveedor = idProveedor;
        this.nombreEmpresa = nombreEmpresa;
        this.productosSurtidos = productosSurtidos;
    }

    public Integer getIdProveedor() { return idProveedor; }
    public void setIdProveedor(Integer idProveedor) { this.idProveedor = idProveedor; }

    public String getNombreEmpresa() { return nombreEmpresa; }
    public void setNombreEmpresa(String nombreEmpresa) { this.nombreEmpresa = nombreEmpresa; }

    public List<Producto> getProductosSurtidos() { return productosSurtidos; }
    public void setProductosSurtidos(List<Producto> productosSurtidos) { this.productosSurtidos = productosSurtidos; }
}