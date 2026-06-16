package mx.gdl.unedl.data.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import mx.gdl.unedl.data.Producto;

@Repository
public interface ProductoRepository extends JpaRepository<Producto, Long> {
	@Query("SELECT DISTINCT cd.producto FROM CompraDetalle cd " +
	        "WHERE cd.compra.proveedor.idProveedor = :idProveedor")
	List<Producto> findProductosByProveedorId(@Param("idProveedor") Integer idProveedor);
}


