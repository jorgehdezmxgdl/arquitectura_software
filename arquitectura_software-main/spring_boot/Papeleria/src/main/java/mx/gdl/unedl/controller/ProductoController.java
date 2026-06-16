package mx.gdl.unedl.controller;

import mx.gdl.unedl.data.Producto;
import mx.gdl.unedl.data.repository.ProductoRepository;
import mx.gdl.unedl.dto.ProveedorProductosDTO;
import mx.gdl.unedl.service.ProductoService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@RestController
@RequestMapping("/api/v1/productos")
public class ProductoController {

    private final ProductoService productoService;

    public ProductoController(ProductoService productoService) {
        this.productoService = productoService;
    }
	
    @PostMapping
    public Producto crearProducto(@RequestBody Producto producto) {
        return productoService.save(producto);
    }

    @GetMapping
    public List<Producto> obtenerTodos() {
        return productoService.findAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Object> obtenerPorId(@PathVariable Long id) {
        Optional<Producto> productoOpt = productoService.findById(id);
        if (productoOpt.isEmpty()) {
            Map<String, Object> errorJson = new HashMap<>();
            errorJson.put("mensaje", "El producto con ID " + id + " no fue encontrado.");
            errorJson.put("codigo", 404);
            return new ResponseEntity<>(errorJson, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(productoOpt.get(), HttpStatus.OK);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Object> actualizarProducto(@PathVariable Long id, @RequestBody Producto datosActualizados) {
        Optional<Producto> productoOpt = productoService.findById(id);
        if (productoOpt.isEmpty()) {
            Map<String, Object> errorJson = new HashMap<>();
            errorJson.put("mensaje", "No se pudo actualizar. El producto con ID " + id + " no fue encontrado.");
            errorJson.put("codigo", 404);
            return new ResponseEntity<>(errorJson, HttpStatus.NOT_FOUND);
        }
        Producto producto = productoOpt.get();
        producto.setNombre(datosActualizados.getNombre());
        producto.setPrecio_venta(datosActualizados.getPrecio_venta());
        producto.setStock_actual(datosActualizados.getStock_actual());
        Producto productoGuardado = productoService.save(producto);
        return new ResponseEntity<>(productoGuardado, HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Object> eliminarProducto(@PathVariable Long id) {
        if (!productoService.existsById(id)) {
            Map<String, Object> errorJson = new HashMap<>();
            errorJson.put("mensaje", "No se pudo eliminar. El producto con ID " + id + " no fue encontrado.");
            errorJson.put("codigo", 404);
            return new ResponseEntity<>(errorJson, HttpStatus.NOT_FOUND);
        }
        productoService.deleteById(id);
        Map<String, Object> exitoJson = new HashMap<>();
        exitoJson.put("mensaje", "Producto con ID " + id + " eliminado con exito.");
        exitoJson.put("codigo", 200);
        return new ResponseEntity<>(exitoJson, HttpStatus.OK);
    }
	
    @GetMapping("/{idProveedor}/proveedor")
    public ResponseEntity<Object> listarProductosPorProveedor(@PathVariable Integer idProveedor) {
        try {
            ProveedorProductosDTO listadoGeneral = productoService.obtenerReporteProductosPorProveedor(idProveedor);
            if (listadoGeneral.getProductosSurtidos().isEmpty()) {
                return ResponseEntity.noContent().build();
            }
            return ResponseEntity.ok(listadoGeneral);
            
        } catch (RuntimeException e) {
            Map<String, Object> errorJson = new HashMap<>();
            errorJson.put("mensaje", e.getMessage());
            errorJson.put("codigo", 404);
            return new ResponseEntity<>(errorJson, HttpStatus.NOT_FOUND);
        }
    }
}