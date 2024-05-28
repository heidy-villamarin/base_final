

CREATE TABLE administrador (
  id INT PRIMARY KEY AUTO_INCREMENT,
  fk_id_categoria INT, 
  fk_id INT, 
  fk_codigo_venta INT,
  fk_prod_codigo INT,
  fk_usa_codigo INT,
  fk_vent_codigo INT,
  tipoId varchar(15) NOT NULL,
  nombre varchar(50) NOT NULL,
  apellido varchar(50) NOT NULL,
  celular int(20) NOT NULL,
  direccion varchar(50) NOT NULL,
  correo varchar(50) NOT NULL,
  estado varchar(8) NOT NULL,
  CONSTRAINT fk_id_categoria_1 FOREIGN KEY (fk_id_categoria) REFERENCES categoria (id_categoria),
  CONSTRAINT fk_id_1 FOREIGN KEY (fk_id) REFERENCES cliente (id),
  CONSTRAINT fk_codigo_venta_1 FOREIGN KEY (fk_codigo_venta) REFERENCES detalle_venta(codigo_venta),
  CONSTRAINT fk_prod_codigo_1 FOREIGN key (fk_prod_codigo) REFERENCES producto (prod_codigo),
  CONSTRAINT fk_usa_codigo_1 FOREIGN key (fk_usa_codigo) REFERENCES usuario (usua_codigo),
  CONSTRAINT fk_vent_codigo_1 FOREIGN key (fk_vent_codigo) REFERENCES venta (vent_codigo)
);


CREATE TABLE categoria (
  id_categoria INT PRIMARY KEY AUTO_INCREMENT,
  nombre_categoria varchar(30) DEFAULT NULL,
  descripcion varchar(50) NOT NULL
);



CREATE TABLE cliente (
  id INT PRIMARY KEY AUTO_INCREMENT,
  tipoId INT NOT NULL,
  nombre_cliente varchar(50) NOT NULL,
  apellido_cliente varchar(50) NOT NULL,
  celular_cliente INT NOT NULL,
  direccion_cliente varchar(50) NOT NULL,
  correo_cliente varchar(50) NOT NULL
);


CREATE TABLE detalle_venta (
  codigo_venta INT PRIMARY KEY AUTO_INCREMENT,
  cantidad_venta int NOT NULL,
  precioProd int NOT NULL
);


CREATE TABLE producto (
  prod_codigo INT PRIMARY KEY AUTO_INCREMENT,
  prod_precioVenta int NOT NULL,
  prod_unidadMedida varchar(50) NOT NULL,
  prod_cantidadStock int NOT NULL,
  Prod_descripcion text NOT NULL
);



CREATE TABLE usuario (
  usua_codigo INT PRIMARY KEY AUTO_INCREMENT,
  usua_nombre varchar(50) NOT NULL,
  usua_clave varchar(20) NOT NULL
);


CREATE TABLE venta (
  vent_codigo INT PRIMARY KEY AUTO_INCREMENT,
  vent_fecha date,
  vent_cantidadTotal int,
  vent_total int
);


INSERT INTO usuario ('usua_nombre', 'usua_clave') VALUES ('julieth', 'villa');
INSERT INTO usuario (`usua_codigo`, `usua_id`, `usua_nombre`, `usua_clave`, `estado`) VALUES ('3', '865', 'marcela', 'triana', 'activo');
INSERT INTO usuario (`usua_codigo`, `usua_id`, `usua_nombre`, `usua_clave`, `estado`) VALUES ('4', '732', 'carolina', 'martinez', 'activo');
INSERT INTO usuario (`usua_codigo`, `usua_id`, `usua_nombre`, `usua_clave`, `estado`) VALUES ('5', '876', 'karol', 'linares', 'activo');
INSERT INTO usuario (`usua_codigo`, `usua_id`, `usua_nombre`, `usua_clave`, `estado`) VALUES ('6', '342', 'julia', 'villama', 'activo');
INSERT INTO usuario (`usua_codigo`, `usua_id`, `usua_nombre`, `usua_clave`, `estado`) VALUES ('7', '657', 'karen', 'camar', 'activo');
INSERT INTO usuario (`usua_codigo`, `usua_id`, `usua_nombre`, `usua_clave`, `estado`) VALUES ('8', '012', 'isa', 'cañon', 'activo');
INSERT INTO usuario (`usua_codigo`, `usua_id`, `usua_nombre`, `usua_clave`, `estado`) VALUES ('9', '453', 'magda', 'martin', 'activo');
INSERT INTO usuario (`usua_codigo`, `usua_id`, `usua_nombre`, `usua_clave`, `estado`) VALUES ('10', '345', 'kimberly', 'lina', 'activo');

INSERT INTO administrador (`id`, `tipoId`, `nombre`, `apellido`, `celular`, `telef2`, `direccion`, `correo`, `Usua_codigo_fk`, `estado`) VALUES ('2', 'cc', 'julieth', 'villa', '8965654', '098764', 'calle 40 sur ', 'marcelatriana@gmail.com', '2', 'activo');
INSERT INTO administrador (`id`, `tipoId`, `nombre`, `apellido`, `celular`, `telef2`, `direccion`, `correo`, `Usua_codigo_fk`, `estado`) VALUES ('3', 'cc', 'marcela', 'triana', '4368654', '866564', 'calle 43 sur ', 'marcelatriana@gmail.com', '3', 'activo');
INSERT INTO administrador (`id`, `tipoId`, `nombre`, `apellido`, `celular`, `telef2`, `direccion`, `correo`, `Usua_codigo_fk`, `estado`) VALUES ('4', 'cc', 'carolina', 'martinez', '43643554', '798564', 'calle 31 sur ', 'carolinamartinez@gmail.com', '4', 'activo');
INSERT INTO administrador (`id`, `tipoId`, `nombre`, `apellido`, `celular`, `telef2`, `direccion`, `correo`, `Usua_codigo_fk`, `estado`) VALUES ('5', 'cc', 'karol', 'linares', '4536654', '907564', 'calle 83 sur ', 'karollinares@gmail.com', '5', 'activo');
INSERT INTO administrador (`id`, `tipoId`, `nombre`, `apellido`, `celular`, `telef2`, `direccion`, `correo`, `Usua_codigo_fk`, `estado`) VALUES ('6', 'cc', 'julia', 'villama', '7655854', '765564', 'calle 20 sur ', 'juliavillama@gmail.com', '6', 'activo');

INSERT INTO cliente (`id`, `tipoId`, `nombre`, `apellido`, `celular`, `direccion`, `telef2`, `correo`, `Usua_codigo_fk`, `estado`) VALUES ('7', 'cc', 'karen', 'camar', '924456', 'calle 27 sur ', '8656334', 'karencamar@gmail.com', '7', 'activo');
INSERT INTO cliente (`id`, `tipoId`, `nombre`, `apellido`, `celular`, `direccion`, `telef2`, `correo`, `Usua_codigo_fk`, `estado`) VALUES ('8', 'cc', 'isa', 'cañon', '654783', 'carrera 42 sur ', '676438834', 'isacañon@gmail.com', '8', 'activo');
INSERT INTO cliente (`id`, `tipoId`, `nombre`, `apellido`, `celular`, `direccion`, `telef2`, `correo`, `Usua_codigo_fk`, `estado`) VALUES ('9', 'cc', 'magda', 'martin', '2345616', 'calle 23 sur ', '6837834', 'magdamartin@gmail.com', '9', 'activo');
INSERT INTO cliente (`id`, `tipoId`, `nombre`, `apellido`, `celular`, `direccion`, `telef2`, `correo`, `Usua_codigo_fk`, `estado`) VALUES ('10', 'cc', 'kimberly', 'lina', '923454456', 'calle 17 sur ', '1236334', 'kimberlylina@gmail.com', '10', 'activo');

INSERT INTO categoria (id_categoria, nombre, descripcion) VALUES ('2', 'paquetes', 'todotipodepaquetes');

INSERT INTO unidad_de_medida (id_medida, descripcion) VALUES ('L', 'litros');
COMMIT;

