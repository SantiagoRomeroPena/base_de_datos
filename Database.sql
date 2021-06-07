create schema tienda
create table tienda.usuario(
	id integer not null,
	nombres varchar(50) not null,
	apellidos varchar(50) not null,
	direccion varchar(100) not null,
	numero_tel varchar(9) not null,
	correo varchar(500) not null,
	contraseña varchar(500),
	constraint pk_usuario primary key (id),
	constraint fk_usuario unique (direccion, numero_tel, correo)
);

create table tienda.cliente(
	id integer not null,
	id_usuario integer not null,
	correo varchar(500) not null,
	num_documento varchar(20) not null,
	contraseña varchar(500) not null,
	constraint pk_cliente primary key (id),
	constraint fk_cliente unique (id_usuario, correo, num_documento,contraseña),
	constraint fk_usu_clien foreign key (id_usuario) references tienda.usuario (id)
);

create table tienda.categoria(
	id integer not null,
	nombre varchar(50) not null,
	descripcion varchar(500) not null,
	estado varchar(40) not null,
	constraint pk_categoria primary key (id)
);

create table tienda.articulo(
	id integer not null,
	id_categoria integer not null,
	codigo varchar(50) not null,
	nombre varchar(250) not null,
	precio_venta decimal(11,2) not null,
	descripcion varchar(225) not null,
	imagen varchar(200) not null,
	estado varchar(40) not null,
	constraint pk_articulo primary key (id),
	constraint fk_articulo unique (codigo, nombre),
	constraint fk_cat_art foreign key (id_categoria) references tienda.categoria (id)
); 

create table tienda.carrito(
	id integer not null,
	id_articulo integer not null,
	detalles varchar(100) not null,
	precios decimal(11,2) not null,
	articulo varchar(50) not null,
	imagenes varchar(200) not null,
	total decimal(11,2) not null,
	constraint pk_carrito primary key (id),
	constraint fk_art_carr foreign key (id_articulo) references tienda.articulo (id)
);

create table tienda.venta(
	id integer not null,
	id_cliente integer not null,
	id_carrito integer not null,
	tipo_comprobante varchar(20) not null,
	serie_comprobante varchar(9) not null,
	num_comprobante varchar(10) not null,
	fecha date not null,
	impuesto decimal(4,2) not null,
	total decimal(11,2) not null,
	estado varchar(20) not null,
	constraint pk_venta primary key (id),
	constraint fk_venta unique (num_comprobante),
	constraint fk_cli_ven foreign key (id_cliente) references tienda.cliente (id),
	constraint fk_carr_ven foreign key (id_carrito) references tienda.carrito (id)
);

create table tienda.detalle_venta(
	id integer not null,
	id_venta integer not null,
	id_articulo integer not null,
	cantidad integer not null,
	precios decimal(11,2) not null,
	descuentos decimal(11,2) not null,
	constraint pk_detalle_venta primary key (id),
	constraint fk_vent_det foreign key (id_venta) references tienda.venta (id),
	constraint fk_art_det foreign key (id_articulo) references tienda.articulo (id)
);

create table tienda.proveedor(
	id integer not null,
	nombre varchar(100) not null,
	tipo_documento varchar(20) not null,
	numero_documento varchar(20) not null,
	direccion varchar(70) not null,
	telefono varchar(20) not null,
	email varchar(50) not null,
	constraint pk_proveedor primary key (id),
	constraint fk_proveedor unique (numero_documento, direccion, telefono, email)
);

create table tienda.ingreso_articulo(
	id integer not null,
	id_usuario integer not null,
	id_proveedor integer not null,
	tipo_comprobante varchar(20) not null,
	serie_comprobante varchar(9) not null,
	num_comprobante varchar(10) not null,
	fecha date not null,
	impuesto decimal(4,2) not null,
	total decimal(11,2) not null,
	estado varchar(20) not null,
	constraint pk_ingreso_articulo primary key (id),
	constraint fk_ingreso_articulo unique (num_comprobante),
	constraint fk_cli_ing foreign key (id_usuario) references tienda.usuario (id),
	constraint fk_prov_ing foreign key (id_proveedor) references tienda.proveedor (id)
);

create table tienda.detalle_ingreso(
	id integer not null,
	id_ingreso integer not null,
	id_articulo integer not null,
	cantidad integer not null,
	precio decimal(11,2) not null,
	constraint pk_detalle_ingreso primary key (id),
	constraint fk_ing_det foreign key (id_ingreso) references tienda.ingreso_articulo (id),
	constraint fk_art_det foreign key (id_articulo) references tienda.articulo (id)
); 