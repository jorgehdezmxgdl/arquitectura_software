--
-- PostgreSQL database dump
--

\restrict 5C22oCBdhXVWw5xdCdvlECAjNFUivxBt2K8VWAB1lA4PbuU2YiwEEHH6JIc5tB1

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: estado_compra_enum; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.estado_compra_enum AS ENUM (
    'pendiente',
    'completada',
    'cancelada'
);


ALTER TYPE public.estado_compra_enum OWNER TO postgres;

--
-- Name: estado_enum; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.estado_enum AS ENUM (
    'activo',
    'inactivo',
    'suspendido'
);


ALTER TYPE public.estado_enum OWNER TO postgres;

--
-- Name: estado_venta_enum; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.estado_venta_enum AS ENUM (
    'completada',
    'anulada',
    'pendiente'
);


ALTER TYPE public.estado_venta_enum OWNER TO postgres;

--
-- Name: metodo_pago_enum; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.metodo_pago_enum AS ENUM (
    'efectivo',
    'tarjeta',
    'transferencia',
    'credito'
);


ALTER TYPE public.metodo_pago_enum OWNER TO postgres;

--
-- Name: tipo_movimiento_enum; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.tipo_movimiento_enum AS ENUM (
    'entrada',
    'salida',
    'ajuste'
);


ALTER TYPE public.tipo_movimiento_enum OWNER TO postgres;

--
-- Name: fn_actualizar_stock(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.fn_actualizar_stock() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF NEW.tipo_movimiento = 'entrada' THEN
        UPDATE productos SET stock_actual = stock_actual + NEW.cantidad WHERE id_producto = NEW.id_producto;
    ELSIF NEW.tipo_movimiento IN ('salida', 'ajuste') THEN
        UPDATE productos SET stock_actual = GREATEST(0, stock_actual - NEW.cantidad) WHERE id_producto = NEW.id_producto;
    END IF;
    RETURN NEW;
END;
$$;


ALTER FUNCTION public.fn_actualizar_stock() OWNER TO postgres;

--
-- Name: fn_obtener_utilidad_global(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.fn_obtener_utilidad_global() RETURNS TABLE(total_ventas numeric, costo_total numeric, utilidad_neta numeric, porcentaje_utilidad numeric)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY
    SELECT 
        COALESCE(SUM(v.total_venta), 0) AS total_ventas,
        COALESCE(SUM(vd.cantidad * p.precio_costo), 0) AS costo_total,
        COALESCE(SUM(vd.utilidad), 0) AS utilidad_neta,
        CASE 
            WHEN SUM(v.total_venta) > 0 THEN ROUND((SUM(vd.utilidad) / SUM(v.total_venta) * 100), 2)
            ELSE 0 
        END AS porcentaje_utilidad
    FROM ventas v
    JOIN ventas_detalle vd ON v.id_venta = vd.id_venta
    JOIN productos p ON vd.id_producto = p.id_producto
    WHERE v.estado = 'completada';
END;
$$;


ALTER FUNCTION public.fn_obtener_utilidad_global() OWNER TO postgres;

--
-- Name: sp_reporte_ventas_periodo(date, date); Type: PROCEDURE; Schema: public; Owner: postgres
--

CREATE PROCEDURE public.sp_reporte_ventas_periodo(IN fecha_ini date, IN fecha_fin date, OUT total_ventas_periodo numeric, OUT total_utilidad_periodo numeric)
    LANGUAGE plpgsql
    AS $$
BEGIN
    SELECT 
        COALESCE(SUM(v.total_venta), 0),
        COALESCE(SUM(vd.utilidad), 0)
    INTO total_ventas_periodo, total_utilidad_periodo
    FROM ventas v
    JOIN ventas_detalle vd ON v.id_venta = vd.id_venta
    WHERE v.fecha_venta BETWEEN fecha_ini AND fecha_fin
      AND v.estado = 'completada';
END;
$$;


ALTER PROCEDURE public.sp_reporte_ventas_periodo(IN fecha_ini date, IN fecha_fin date, OUT total_ventas_periodo numeric, OUT total_utilidad_periodo numeric) OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientes (
    id_cliente integer NOT NULL,
    nombre_completo character varying(100) NOT NULL,
    email character varying(100),
    telefono character varying(20),
    direccion text,
    fecha_registro date DEFAULT CURRENT_DATE,
    estado public.estado_enum DEFAULT 'activo'::public.estado_enum
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- Name: clientes_id_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clientes_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.clientes_id_cliente_seq OWNER TO postgres;

--
-- Name: clientes_id_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clientes_id_cliente_seq OWNED BY public.clientes.id_cliente;


--
-- Name: compras; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.compras (
    id_compra integer NOT NULL,
    id_proveedor integer,
    fecha_compra date DEFAULT CURRENT_DATE,
    total_compra numeric(12,2),
    estado public.estado_compra_enum DEFAULT 'pendiente'::public.estado_compra_enum
);


ALTER TABLE public.compras OWNER TO postgres;

--
-- Name: compras_detalle; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.compras_detalle (
    id_detalle_compra integer NOT NULL,
    id_compra integer,
    id_producto integer,
    cantidad integer NOT NULL,
    precio_unitario numeric(10,2),
    CONSTRAINT compras_detalle_cantidad_check CHECK ((cantidad > 0)),
    CONSTRAINT compras_detalle_precio_unitario_check CHECK ((precio_unitario > (0)::numeric))
);


ALTER TABLE public.compras_detalle OWNER TO postgres;

--
-- Name: compras_detalle_id_detalle_compra_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.compras_detalle_id_detalle_compra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.compras_detalle_id_detalle_compra_seq OWNER TO postgres;

--
-- Name: compras_detalle_id_detalle_compra_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.compras_detalle_id_detalle_compra_seq OWNED BY public.compras_detalle.id_detalle_compra;


--
-- Name: compras_id_compra_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.compras_id_compra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.compras_id_compra_seq OWNER TO postgres;

--
-- Name: compras_id_compra_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.compras_id_compra_seq OWNED BY public.compras.id_compra;


--
-- Name: deudores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deudores (
    id_deudor integer NOT NULL,
    id_cliente integer,
    monto_deuda numeric(10,2) DEFAULT 0.00,
    fecha_ultimo_pago date,
    estado public.estado_enum DEFAULT 'activo'::public.estado_enum,
    CONSTRAINT deudores_monto_deuda_check CHECK ((monto_deuda >= (0)::numeric))
);


ALTER TABLE public.deudores OWNER TO postgres;

--
-- Name: deudores_id_deudor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.deudores_id_deudor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.deudores_id_deudor_seq OWNER TO postgres;

--
-- Name: deudores_id_deudor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.deudores_id_deudor_seq OWNED BY public.deudores.id_deudor;


--
-- Name: empleados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleados (
    id_empleado integer NOT NULL,
    nombre_completo character varying(100) NOT NULL,
    email character varying(100),
    telefono character varying(20),
    id_rol integer,
    fecha_contratacion date DEFAULT CURRENT_DATE,
    salario numeric(10,2),
    estado public.estado_enum DEFAULT 'activo'::public.estado_enum,
    CONSTRAINT empleados_salario_check CHECK ((salario > (0)::numeric))
);


ALTER TABLE public.empleados OWNER TO postgres;

--
-- Name: empleados_id_empleado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.empleados_id_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.empleados_id_empleado_seq OWNER TO postgres;

--
-- Name: empleados_id_empleado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.empleados_id_empleado_seq OWNED BY public.empleados.id_empleado;


--
-- Name: inventarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventarios (
    id_inventario integer NOT NULL,
    id_producto integer,
    tipo_movimiento public.tipo_movimiento_enum NOT NULL,
    cantidad integer NOT NULL,
    fecha_movimiento timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    id_empleado integer,
    observaciones text,
    CONSTRAINT inventarios_cantidad_check CHECK ((cantidad > 0))
);


ALTER TABLE public.inventarios OWNER TO postgres;

--
-- Name: inventarios_id_inventario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.inventarios_id_inventario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.inventarios_id_inventario_seq OWNER TO postgres;

--
-- Name: inventarios_id_inventario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.inventarios_id_inventario_seq OWNED BY public.inventarios.id_inventario;


--
-- Name: ofertas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ofertas (
    id_oferta integer NOT NULL,
    id_producto integer,
    porcentaje_descuento numeric(5,2),
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL,
    estado public.estado_enum DEFAULT 'activo'::public.estado_enum,
    CONSTRAINT ofertas_check CHECK ((fecha_fin > fecha_inicio)),
    CONSTRAINT ofertas_porcentaje_descuento_check CHECK (((porcentaje_descuento >= (0)::numeric) AND (porcentaje_descuento <= (100)::numeric)))
);


ALTER TABLE public.ofertas OWNER TO postgres;

--
-- Name: ofertas_id_oferta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ofertas_id_oferta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ofertas_id_oferta_seq OWNER TO postgres;

--
-- Name: ofertas_id_oferta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ofertas_id_oferta_seq OWNED BY public.ofertas.id_oferta;


--
-- Name: productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productos (
    id_producto integer NOT NULL,
    nombre character varying(150) NOT NULL,
    categoria character varying(50),
    precio_costo numeric(10,2),
    precio_venta numeric(10,2),
    stock_actual integer DEFAULT 0,
    stock_minimo integer DEFAULT 5,
    estado public.estado_enum DEFAULT 'activo'::public.estado_enum,
    CONSTRAINT productos_precio_costo_check CHECK ((precio_costo > (0)::numeric)),
    CONSTRAINT productos_stock_actual_check CHECK ((stock_actual >= 0))
);


ALTER TABLE public.productos OWNER TO postgres;

--
-- Name: productos_id_producto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.productos_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.productos_id_producto_seq OWNER TO postgres;

--
-- Name: productos_id_producto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.productos_id_producto_seq OWNED BY public.productos.id_producto;


--
-- Name: proveedores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proveedores (
    id_proveedor integer NOT NULL,
    nombre_empresa character varying(100) NOT NULL,
    contacto character varying(100),
    email character varying(100),
    telefono character varying(20),
    direccion text,
    estado public.estado_enum DEFAULT 'activo'::public.estado_enum
);


ALTER TABLE public.proveedores OWNER TO postgres;

--
-- Name: proveedores_id_proveedor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.proveedores_id_proveedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.proveedores_id_proveedor_seq OWNER TO postgres;

--
-- Name: proveedores_id_proveedor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.proveedores_id_proveedor_seq OWNED BY public.proveedores.id_proveedor;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id_rol integer NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion text
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- Name: roles_id_rol_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_rol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roles_id_rol_seq OWNER TO postgres;

--
-- Name: roles_id_rol_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_rol_seq OWNED BY public.roles.id_rol;


--
-- Name: ventas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ventas (
    id_venta integer NOT NULL,
    id_cliente integer,
    id_empleado integer,
    fecha_venta timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    metodo_pago public.metodo_pago_enum DEFAULT 'efectivo'::public.metodo_pago_enum,
    total_venta numeric(12,2),
    estado public.estado_venta_enum DEFAULT 'completada'::public.estado_venta_enum
);


ALTER TABLE public.ventas OWNER TO postgres;

--
-- Name: ventas_detalle; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ventas_detalle (
    id_detalle_venta integer NOT NULL,
    id_venta integer,
    id_producto integer,
    cantidad integer NOT NULL,
    precio_unitario numeric(10,2),
    utilidad numeric(10,2),
    CONSTRAINT ventas_detalle_cantidad_check CHECK ((cantidad > 0)),
    CONSTRAINT ventas_detalle_precio_unitario_check CHECK ((precio_unitario > (0)::numeric))
);


ALTER TABLE public.ventas_detalle OWNER TO postgres;

--
-- Name: v_reporte_ventas; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_reporte_ventas AS
 SELECT v.id_venta,
    c.nombre_completo AS cliente,
    e.nombre_completo AS empleado,
    v.fecha_venta,
    v.metodo_pago,
    p.nombre AS producto,
    p.categoria,
    vd.cantidad,
    vd.precio_unitario,
    vd.utilidad,
    v.total_venta
   FROM ((((public.ventas v
     JOIN public.clientes c ON ((v.id_cliente = c.id_cliente)))
     JOIN public.empleados e ON ((v.id_empleado = e.id_empleado)))
     JOIN public.ventas_detalle vd ON ((v.id_venta = vd.id_venta)))
     JOIN public.productos p ON ((vd.id_producto = p.id_producto)))
  WHERE (v.estado = 'completada'::public.estado_venta_enum);


ALTER VIEW public.v_reporte_ventas OWNER TO postgres;

--
-- Name: ventas_detalle_id_detalle_venta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ventas_detalle_id_detalle_venta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ventas_detalle_id_detalle_venta_seq OWNER TO postgres;

--
-- Name: ventas_detalle_id_detalle_venta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ventas_detalle_id_detalle_venta_seq OWNED BY public.ventas_detalle.id_detalle_venta;


--
-- Name: ventas_id_venta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ventas_id_venta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ventas_id_venta_seq OWNER TO postgres;

--
-- Name: ventas_id_venta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ventas_id_venta_seq OWNED BY public.ventas.id_venta;


--
-- Name: clientes id_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes ALTER COLUMN id_cliente SET DEFAULT nextval('public.clientes_id_cliente_seq'::regclass);


--
-- Name: compras id_compra; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compras ALTER COLUMN id_compra SET DEFAULT nextval('public.compras_id_compra_seq'::regclass);


--
-- Name: compras_detalle id_detalle_compra; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compras_detalle ALTER COLUMN id_detalle_compra SET DEFAULT nextval('public.compras_detalle_id_detalle_compra_seq'::regclass);


--
-- Name: deudores id_deudor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deudores ALTER COLUMN id_deudor SET DEFAULT nextval('public.deudores_id_deudor_seq'::regclass);


--
-- Name: empleados id_empleado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados ALTER COLUMN id_empleado SET DEFAULT nextval('public.empleados_id_empleado_seq'::regclass);


--
-- Name: inventarios id_inventario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventarios ALTER COLUMN id_inventario SET DEFAULT nextval('public.inventarios_id_inventario_seq'::regclass);


--
-- Name: ofertas id_oferta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ofertas ALTER COLUMN id_oferta SET DEFAULT nextval('public.ofertas_id_oferta_seq'::regclass);


--
-- Name: productos id_producto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos ALTER COLUMN id_producto SET DEFAULT nextval('public.productos_id_producto_seq'::regclass);


--
-- Name: proveedores id_proveedor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedores ALTER COLUMN id_proveedor SET DEFAULT nextval('public.proveedores_id_proveedor_seq'::regclass);


--
-- Name: roles id_rol; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id_rol SET DEFAULT nextval('public.roles_id_rol_seq'::regclass);


--
-- Name: ventas id_venta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas ALTER COLUMN id_venta SET DEFAULT nextval('public.ventas_id_venta_seq'::regclass);


--
-- Name: ventas_detalle id_detalle_venta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas_detalle ALTER COLUMN id_detalle_venta SET DEFAULT nextval('public.ventas_detalle_id_detalle_venta_seq'::regclass);


--
-- Name: clientes clientes_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_email_key UNIQUE (email);


--
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id_cliente);


--
-- Name: compras_detalle compras_detalle_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compras_detalle
    ADD CONSTRAINT compras_detalle_pkey PRIMARY KEY (id_detalle_compra);


--
-- Name: compras compras_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compras
    ADD CONSTRAINT compras_pkey PRIMARY KEY (id_compra);


--
-- Name: deudores deudores_id_cliente_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deudores
    ADD CONSTRAINT deudores_id_cliente_key UNIQUE (id_cliente);


--
-- Name: deudores deudores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deudores
    ADD CONSTRAINT deudores_pkey PRIMARY KEY (id_deudor);


--
-- Name: empleados empleados_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_email_key UNIQUE (email);


--
-- Name: empleados empleados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_pkey PRIMARY KEY (id_empleado);


--
-- Name: inventarios inventarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventarios
    ADD CONSTRAINT inventarios_pkey PRIMARY KEY (id_inventario);


--
-- Name: ofertas ofertas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ofertas
    ADD CONSTRAINT ofertas_pkey PRIMARY KEY (id_oferta);


--
-- Name: productos productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id_producto);


--
-- Name: proveedores proveedores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedores
    ADD CONSTRAINT proveedores_pkey PRIMARY KEY (id_proveedor);


--
-- Name: roles roles_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_nombre_key UNIQUE (nombre);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id_rol);


--
-- Name: ventas_detalle ventas_detalle_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas_detalle
    ADD CONSTRAINT ventas_detalle_pkey PRIMARY KEY (id_detalle_venta);


--
-- Name: ventas ventas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_pkey PRIMARY KEY (id_venta);


--
-- Name: idx_deudores_monto; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_deudores_monto ON public.deudores USING btree (monto_deuda);


--
-- Name: idx_inventario_producto; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_inventario_producto ON public.inventarios USING btree (id_producto);


--
-- Name: idx_productos_categoria; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_productos_categoria ON public.productos USING btree (categoria);


--
-- Name: idx_ventas_fecha; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_ventas_fecha ON public.ventas USING btree (fecha_venta);


--
-- Name: inventarios trg_actualizar_stock; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER trg_actualizar_stock AFTER INSERT ON public.inventarios FOR EACH ROW EXECUTE FUNCTION public.fn_actualizar_stock();


--
-- Name: compras_detalle compras_detalle_id_compra_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compras_detalle
    ADD CONSTRAINT compras_detalle_id_compra_fkey FOREIGN KEY (id_compra) REFERENCES public.compras(id_compra) ON DELETE CASCADE;


--
-- Name: compras_detalle compras_detalle_id_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compras_detalle
    ADD CONSTRAINT compras_detalle_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto);


--
-- Name: compras compras_id_proveedor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compras
    ADD CONSTRAINT compras_id_proveedor_fkey FOREIGN KEY (id_proveedor) REFERENCES public.proveedores(id_proveedor);


--
-- Name: deudores deudores_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deudores
    ADD CONSTRAINT deudores_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.clientes(id_cliente);


--
-- Name: empleados empleados_id_rol_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_id_rol_fkey FOREIGN KEY (id_rol) REFERENCES public.roles(id_rol);


--
-- Name: inventarios inventarios_id_empleado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventarios
    ADD CONSTRAINT inventarios_id_empleado_fkey FOREIGN KEY (id_empleado) REFERENCES public.empleados(id_empleado);


--
-- Name: inventarios inventarios_id_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventarios
    ADD CONSTRAINT inventarios_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto);


--
-- Name: ofertas ofertas_id_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ofertas
    ADD CONSTRAINT ofertas_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto);


--
-- Name: ventas_detalle ventas_detalle_id_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas_detalle
    ADD CONSTRAINT ventas_detalle_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto);


--
-- Name: ventas_detalle ventas_detalle_id_venta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas_detalle
    ADD CONSTRAINT ventas_detalle_id_venta_fkey FOREIGN KEY (id_venta) REFERENCES public.ventas(id_venta) ON DELETE CASCADE;


--
-- Name: ventas ventas_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.clientes(id_cliente);


--
-- Name: ventas ventas_id_empleado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_id_empleado_fkey FOREIGN KEY (id_empleado) REFERENCES public.empleados(id_empleado);


--
-- PostgreSQL database dump complete
--

\unrestrict 5C22oCBdhXVWw5xdCdvlECAjNFUivxBt2K8VWAB1lA4PbuU2YiwEEHH6JIc5tB1

