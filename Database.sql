insert into tienda.usuario (id, nombres, apellidos, direccion, numero_tel, correo, contraseña)
values ('6','sebastian', 'peralta', 'CLL78 sur #23B23', '321123456', 'sebas@gmail.com', 'elsebas');

insert into tienda.cliente (id, id_usuario, correo, num_documento, contraseña)
values ('5', '5', 'lvrondon8@misena.edu.co', '10000764532', 'laurent123123');

select *
from tienda.cliente C
join tienda.usuario U
on U.id = C.id_usuario
comment 'este join deja visualizar la union entre la tabla cliente y usuario solamente los campos que tienen alguna relacion'

insert into tienda.proveedor (id, nombre, tipo_documento, numero_documento, direccion, telefono, email)
values ('5', 'Fernando', 'C.C', '1000389343', 'CLL23 sur #23D93', '320312345', 'Fernando01023@gamil.com')


insert into tienda.ingreso_articulo (id, id_usuario, id_proveedor, tipo_comprobante, serie_comprobante, num_comprobante, fecha, impuesto, total, estado)
values ('5', '5', '5', 'ingreso', 'EDASSSDa', '203', '13/12/2021', '40.0', '180.00', 'pago')

select *
from tienda.usuario U
left join tienda.ingreso_articulo I
on U.id = I.id 
-- 'deja visualizar todos los campos de las dos tablas relacionadas incluso si un campo no esta relacionado con otro campo'

select *
from tienda.proveedor P
join tienda.ingreso_articulo I
on P.id = I.id 

insert into tienda.categoria (id, nombre, descripcion, estado)
values ('5', 'Libros literarios y lingüísticos', 'Esta clasificación se orienta al ámbito de la lengua y sus expresiones,  través de la creación de obras literarias con términos y figuras lingüísticas que dan forma a un idioma, omando usos del momento en el cual el autor viva, y plasmándolos en sus obras.',
		'disponible')
		
insert into tienda.articulo (id, id_categoria, codigo, nombre, precio_venta, descripcion, imagen, estado)
values ('5', '5', 'ISBN 543-34-7655-765-0', 'LIBRO LA METAMORFOSIS BILINGUE', '32.000', 'Aprender ingles de la mano de los autores mas importantes de la literatura universal es posible con esta coleccion. Los Clasicos Bilinges contienen el texto en castellano acompaado pagina a pagina por su version en ingles.',
		'','disponible')
	
select * 
from tienda.categoria C
join tienda.articulo A
on C.id = A.id

insert into tienda.detalle_ingreso (id, id_ingreso, id_articulo, cantidad, precio)
values ('5', '5', '5', '1', '32.000')

select *
from tienda.ingreso_articulo I
join tienda.detalle_ingreso D
on I.id = D.id_ingreso
-- 'visualiso los datos relacionados entre la tabla el ingreso de los articulos y los detalles del ingreso')

select * 
from tienda.articulo A
join tienda.detalle_ingreso D
on A.id = D.id 
-- 'visualiso los datos relacionados entre la tabla articulo e ingreso'

insert into tienda.carrito (id, id_articulo, detalles, precios, articulo, imagenes, total)
values ('5', '5', 'Los productos que has escogido para comprar y sus precios los podras vizualisar aca mismo',
		'32.000', 'LIBRO LA METAMORFOSIS BILINGUE', '', '32.000')
		
select *
from tienda.articulo A
join tienda.carrito C
on A.id = C.id 
--'visualiza las relaciones y uniones entre las tablas de articulo y carrito'

insert into tienda.venta (id, id_cliente, id_carrito, tipo_comprobante, serie_comprobante, num_comprobante, fecha, impuesto, total, estado)
values ('5', '5', '5', 'ingreso', 'WERFasd', '118', '23/08/2021', '21.0', '32.000', 'pago')

select *
from tienda.cliente C
join tienda.venta V
on C.id = V.id 
--'visualiza las uniones entres las tablas cliente y venta'

select *
from tienda.carrito C
join tienda.venta V
on C.id = V.id 
--'visualiza las uniones entres las tablas cliente y venta'

insert into tienda.detalle_venta (id, id_venta, id_articulo, cantidad, precios, descuentos)
values('3', '3', '3', '1', '75.000', '2.04')


