package mx.gdl.unedl.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional; 

import mx.gdl.unedl.data.Producto;
import mx.gdl.unedl.data.Proveedor;
import mx.gdl.unedl.data.repository.ProductoRepository;
import mx.gdl.unedl.data.repository.ProveedorRepository;
import mx.gdl.unedl.dto.ProveedorProductosDTO;

@Service
public class ProductoService {

	private final ProductoRepository productoRepository;
    private final ProveedorRepository proveedorRepository; 

    public ProductoService(ProductoRepository productoRepository, ProveedorRepository proveedorRepository) {
        this.productoRepository = productoRepository;
        this.proveedorRepository = proveedorRepository;
    }

    @Transactional
    public Producto save(Producto producto) {
        return productoRepository.save(producto);
    }

    @Transactional(readOnly = true)
    public List<Producto> findAll() {
        return productoRepository.findAll();
    }

    @Transactional(readOnly = true)
    public Optional<Producto> findById(Long id) {
        return productoRepository.findById(id);
    }

    @Transactional(readOnly = true)
    public boolean existsById(Long id) {
        return productoRepository.existsById(id);
    }

    @Transactional
    public void deleteById(Long id) {
        productoRepository.deleteById(id);
    }

    @Transactional(readOnly = true)
    public ProveedorProductosDTO obtenerReporteProductosPorProveedor(Integer idProveedor) {
        Proveedor proveedor = proveedorRepository.findById(idProveedor)
                .orElseThrow(() -> new RuntimeException("El proveedor con ID " + idProveedor + " no fue encontrado."));
        List<Producto> productos = productoRepository.findProductosByProveedorId(idProveedor);
        return new ProveedorProductosDTO(
            proveedor.getIdProveedor(),
            proveedor.getNombreEmpresa(),
            productos
        );
    }
}