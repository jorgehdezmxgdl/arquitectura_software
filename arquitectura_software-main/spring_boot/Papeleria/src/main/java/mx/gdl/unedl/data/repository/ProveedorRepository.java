package mx.gdl.unedl.data.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import mx.gdl.unedl.data.Proveedor;

@Repository
public interface ProveedorRepository extends JpaRepository<Proveedor, Integer> {
  
}