create table Users 
(
id int not null unique generated always
as identity(start with 1, increment by 1),
user int(10) not null,
email varchar(255) not null primary key,
password varchar(255) not null,
info int(10) not null,
role int(10) not null
)

create table Order
(
user_id int not null primary key
refernces Users(id),
user int(10) not null,
created DATETIME DEFAULT CURRENT_TIMESTAMP
)

create table Order2Product
(
order int(10) not null,
product int (10) not null
)
create table UserInfo
(
user_id int not null primary key
refernces Users(id),
name varchar(255) not null,
surname varchar(255) not null
)
create table Product
(
user_id int not null
refernces Users(id),
code varchar(255) is not null primary key,
title varchar(255) not null,
supplier int(10),
initial price double(10),
reatall_value double(10)
)
create table Supplier
(
user_id int not null 
refernces Users(id),
name varchar(255) primary key,
adress varchar(255) not null,
phone varchar(255),
representative varchar(255) not null
)
create table Roles
(
user_id int not null primary key
refernces Users(id),
name varchar(255) primary key
)
;