insert into tienda.usuario (id, nombres, apellidos, direccion, numero_tel, correo, contraseña)
values ('6','sebastian', 'peralta', 'CLL78 sur #23B23', '321123456', 'sebas@gmail.com', 'elsebas');

insert into tienda.cliente (id, id_usuario, correo, num_documento, contraseña)
values ('5', '5', 'lvrondon8@misena.edu.co', '10000764532', 'laurent123123');

select *
from tienda.cliente C
join tienda.usuario U
on U.id = C.id_usuario

insert into tienda.proveedor (id, nombre, tipo_documento, numero_documento, direccion, telefono, email)
values ('4', 'john', 'C.C', '1000323425', 'CLL78 sur #23B23', '310299435', 'johntovarr@gmail.com')
