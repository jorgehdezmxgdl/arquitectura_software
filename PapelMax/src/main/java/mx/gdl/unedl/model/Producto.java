package mx.gdl.unedl.model;

/**
 *
 * @author jorgefausto
 */
public class Producto {
    private String  nombre;
    private int     existencias;
    private float   precio;
    private String  descripcion;
    private boolean activo;  

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getExistencias() {
        return existencias;
    }

    public void setExistencias(int existencias) {
        this.existencias = existencias;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }

    public Producto() {
    }

    public Producto(String nombre, int existencias, float precio, String descripcion, boolean activo) {
        this.nombre = nombre;
        this.existencias = existencias;
        this.precio = precio;
        this.descripcion = descripcion;
        this.activo = activo;
    }
    
    
}
