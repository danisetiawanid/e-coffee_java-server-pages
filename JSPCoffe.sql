create database db_coffee

use db_coffee

create table db_coffee_akun(
id_akun int IDENTITY (1,1) primary key NOT NULL,
nama varchar (200) NOT NULL,
email varchar(200) NOT NULL,
password_akun varchar (6) NOT NULL,
);




select * from db_coffee_akun


UPDATE db_coffee_akun
SET nama = 'Alfred Schmidt', email= 'Frankfurt@gmail.com', password_akun= 'azura'
WHERE id_akun = 2;

create table db_coffee_admin(
id_admin int identity(1,1) primary key not null,
username varchar(200),
password_admin varchar(6)
);

select * from db_coffee_admin

create table db_coffee_detail(
ID int IDENTITY (6251,1) primary key,
Coffee_Name varchar(200) not null ,
Stock int,
Price bigint,
);

insert into db_coffee_detail values('Mocha','2000','20000')
insert into db_coffee_detail values('Cafe Late','3000','35000')
insert into db_coffee_detail values('Affogato','4000','45000')

UPDATE db_coffee_detail
SET coffee_name = 'Alfred Schmidt', Stock= '2', Price= '2222',Expired = '01/01/2013'
WHERE id_coffee = 6251;

DELETE FROM db_coffee_detail WHERE id_coffee=6251;

select * from db_coffee_detail

create table db_coffee_transaction(
id_transaction int IDENTITY (123456,1) primary key,
id_akun varchar(200)not null,
id_coffee varchar(200) not null,
nama varchar(200)not null,
coffee_name varchar(120)not null,
price int not null,
qty int,
total_price int,
address varchar(200) not null,
date_of_purchase date null
);

select * from db_coffee_transaction

create trigger insert_data_db_coffee_transaction
on db_coffee_transaction after insert
as
update db_coffee_detail set db_coffee_detail.Stock = db_coffee_detail.Stock-inserted.Qty
from inserted where db_coffee_detail.id = inserted.ID_Coffee

insert into db_coffee_transaction values ('2929','6251','dani','Americano','2000','20','2000','citereup','2020-1-1');


select * from db_coffee_transaction

drop table db_coffee_detail
drop table db_coffee_akun

create table db_coffee_subcriber(
id_subcriber int identity(21,1) primary key not null,
email_subcriber varchar (200),
phone_number varchar (200)
);

select * from db_coffee_subcriber