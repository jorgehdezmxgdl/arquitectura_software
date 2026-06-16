package mx.gdl.unedl.data;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "productos")
public class Producto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_producto;
    
	private String nombre;
    private String categoria;
    private Double precio_venta;
    private Integer stock_actual;
    
    public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	public Double getPrecio_venta() {
		return precio_venta;
	}
	public void setPrecio_venta(Double precio_venta) {
		this.precio_venta = precio_venta;
	}
	public Integer getStock_actual() {
		return stock_actual;
	}
	public void setStock_actual(Integer stock_actual) {
		this.stock_actual = stock_actual;
	}
	public Producto(String nombre, String categoria, Double precio_venta, Integer stock_actual) {
		super();
		this.nombre = nombre;
		this.categoria = categoria;
		this.precio_venta = precio_venta;
		this.stock_actual = stock_actual;
	}
	public Producto() {
		super();
	}

}