create database BestLibrary
use BestLibrary

create table Books (
	Id int primary key identity,
	Title varchar(40)
);



insert into Books values ('Sherlock Holmes'), 
('Master and Margarett'),
('Portret of Dorian Grey'), 
('Lord of Rings'),
('Dogs heart'),
('Little Prince'),
('1984'),
('Custle')



create table Authors (
	Id int primary key identity,
	FirstName varchar(20),
	LastName varchar(20)
);

insert into Authors values ('Artur', 'Doyl'),
('Mikhail', 'Bulgakov'),
('Oscar', 'Wilde'),
('George', 'Talking'),
('Antoine', 'Saint-exupery'),
('George', 'Oruel'),
('Franz', 'Kafka')

create table Customers (
	Id int primary key identity,
	FirstName varchar(20),
	LastName varchar(20),
	IsDebtor bit
);

insert into Customers values ('Arina', 'Ogur', 1), 
('Esenia', 'Nova', 1), 
('Polina', 'Sabanova', 1), 
('Eva', 'Plotnikova', 1), 
('Karina', 'Beresalvets', 1), 
('Alina', 'Demina', 1)

create table BooksInLibrary (
	Id int primary key identity,
	Id_book int foreign key references Books(Id),
	Id_author int foreign key references Authors(Id),
	Id_customer int foreign key references Customers(Id)
);

insert into BooksInLibrary values
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 2, null),
(6, 5, null),
(7, 6, null),
(8, 7, 5)
