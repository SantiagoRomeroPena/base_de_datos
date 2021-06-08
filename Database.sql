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
comment 'deja visualizar todos los campos de las dos tablas relacionadas incluso si un campo no esta relacionado con otro campo'

select *
from tienda.proveedor P
join tienda.ingreso_articulo I
on P.id = I.id 

insert into tienda.categoria (id, nombre, descripcion, estado)
values ('5', 'Libros literarios y lingüísticos', 'Esta clasificación se orienta al ámbito de la lengua y sus expresiones,  través de la creación de obras literarias con términos y figuras lingüísticas que dan forma a un idioma, omando usos del momento en el cual el autor viva, y plasmándolos en sus obras.',
		'disponible')
		
insert into tienda.articulo (id, id_categoria, codigo, nombre, precio_venta, descripcion, imagen, estado)
values ('2', '2', 'ISBN 922-91-1123-345-0', 'Algebra Preuniversitaria', '95.000', 'Algebra preuniversitaria presenta aspectos didácticos tan importantes como el contenido mismo. A partir de una preocupación propia de los autores, se organizó el texto para hacerlo ágil y adecuado para los alumnos.',
		'','disponible')