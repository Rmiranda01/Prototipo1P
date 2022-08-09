create database parcial1serie3;
use parcial1serie3;

create table usuario(
id_usuario int not null,
nombre varchar(30),
contrasena varchar(30)
);

insert into usuario values (1,'Ricardo','1010');

drop table Prueba;

create table clientes(
Nit_cliente int not null primary key,
Nombre varchar(30),
Apellido varchar(30),
Direccion varchar(30),
Numero varchar(30)
);

create table productos(
id_prod int not null primary key auto_increment,
Nombre varchar(30),
Detalle varchar(30),
Precio_pro int
);

create table ventas(
id_ventas int not null primary key,
id_prod int not null,
Nit int not null,
Pago_venta varchar(30)
);

alter table ventas ADD foreign key (id_prod) references productos (id_prod);
alter table ventas ADD foreign key (Nit) references clientes (Nit_cliente);
alter table cuenta_cobrar ADD foreign key (id_ventas) references ventas (id_ventas);

create table cuenta_cobrar(
id_cuentapcobrar int not null primary key,
id_ventas int,
Saldo int
);

create table pagos(
id_pagos int not null primary key auto_increment,
fecha varchar(30),
cant_pagos varchar(30),
id_cuentapcobrar int,
id_producto int
);
alter table pagos ADD foreign key (id_cuentapcobrar) references cuenta_cobrar (id_cuentapcobrar);
alter table pagos ADD foreign key (id_producto) references productos (id_prod);