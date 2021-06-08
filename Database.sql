insert into tienda.usuario (id, nombres, apellidos, direccion, numero_tel, correo, contraseña)
values ('6','sebastian', 'peralta', 'CLL78 sur #23B23', '321123456', 'sebas@gmail.com', 'elsebas');

insert into tienda.cliente (id, id_usuario, correo, num_documento, contraseña)
values ('5', '5', 'lvrondon8@misena.edu.co', '10000764532', 'laurent123123');

select *
from tienda.cliente C
join tienda.usuario U
on U.id = C.id_usuario

insert into tienda.proveedor (id, nombre, tipo_documento, numero_documento, direccion, telefono, email)
values ('5', 'Fernando', 'C.C', '1000389343', 'CLL23 sur #23D93', '320312345', 'Fernando01023@gamil.com')


insert into tienda.ingreso_articulo (id, id_usuario, id_proveedor, tipo_comprobante, serie_comprobante, num_comprobante, fecha, impuesto, total, estado)
values ('1', '1', '1', 'ingreso', 'CASDAS11', '104', '12/04/2021', '25.0', '200.00', 'pago')