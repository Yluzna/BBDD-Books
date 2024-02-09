create database base_datos_libros;
use base_datos_libros;

create table roles(
	roles_id int auto_increment primary key,
    roles_name varchar(100) not null
    );
insert into roles(roles_name) value ('admin'), ('customer'); 
    
create table users(
	users_id int auto_increment primary key,
    users_name varchar(50) not null,
    users_email varchar(50) not null,
    users_password varchar(30) not null, 
    users_address varchar (30) not null,
    users_phone int,
    roles_id int,
	foreign key (roles_id)
    references roles(roles_id)   
); 
insert into users(users_name, users_email, users_password, users_address, users_phone, roles_id) value
('lector1', 'lector1@gmail.com', 'lector1.123*', 'saturno', '666666666', 2),
('lector2', 'lector2@gmail.com', 'lector2.123*', 'pluton', '666666667', 2),
('lector3', 'lector3@gmail.com', 'lector3.123*', 'venus', '459863569', 2);	

create table category(
	category_id int auto_increment primary key,
    category_name varchar(30)not null
);

insert into category(category_name) values ('criminal'), ('suspense'), ('drama'), ('fantasy');

create table products(
	products_id int auto_increment primary key,
    products_title varchar(30) not null,
    products_price decimal(9,2) not null,
    products_stock int default 1,
    products_author varchar(30) not null,
    category_id int,
    foreign key (category_id)
    references category(category_id)   
);

insert into products(products_title, products_price, products_stock, products_author, category_id) values
('Bajo la Misma Estrella', 22.5,20,'Jhon Green',3),
('Yo Mato', 30,9,'Giorgio Faletti',2),
('Animales Fantàsticos', 27,98,'J.K Rowling',4),
('Frankenstein', 15.32,45, 'Mary Shelley',4),
('Dràcula', 51.57,32, 'Bram Stoker',4);
