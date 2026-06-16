CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    codigo_cliente VARCHAR(20) NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(150) NOT NULL,
    fecha_nacimiento DATE,
    email VARCHAR(150),
    telefono VARCHAR(50)
);

CREATE TABLE productos (
    id SERIAL PRIMARY KEY,
    codigo_barras VARCHAR(50) NOT NULL UNIQUE,
    nombre VARCHAR(150) NOT NULL,
    precio_publico NUMERIC(10,2) NOT NULL,
    minimo INTEGER DEFAULT 0,
    existencias INTEGER DEFAULT 0
);

CREATE TABLE ventas (
    id SERIAL PRIMARY KEY,
    folio VARCHAR(50) NOT NULL UNIQUE,
    cliente_id INTEGER NOT NULL,
    subtotal NUMERIC(12,2) NOT NULL,

    CONSTRAINT fk_ventas_cliente
        FOREIGN KEY (cliente_id)
        REFERENCES clientes(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE TABLE detalle_ventas (
    id SERIAL PRIMARY KEY,
    producto_id INTEGER NOT NULL,
    venta_id INTEGER NOT NULL,
    precio NUMERIC(10,2) NOT NULL,
    cantidad INTEGER NOT NULL,

    CONSTRAINT fk_detalle_producto
        FOREIGN KEY (producto_id)
        REFERENCES productos(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,

    CONSTRAINT fk_detalle_venta
        FOREIGN KEY (venta_id)
        REFERENCES ventas(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);