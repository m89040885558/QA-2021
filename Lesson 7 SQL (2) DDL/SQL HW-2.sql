--Таблица employees
--1)Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

--2)Наполнить таблицу employee 70 строками.
insert into employees (employee_name)
values ('Sidorov'),
('Cinica'),
('Pashin'),
('Vlasik'),
('Solovyov'),
('Malakhova'),
('Gorlov'),
('Efimov'),
('Samorodskii'),
('Samoylova'),
('Grishina'),
('Orlova'),
('Lobanov'),
('Bessonova'),
('Ermolenko'),
('Babushkina'),
('Borisova'),
('Belyakova'),
('Sokolova'),
('Volkov'),
('Litvinova'),
('Abramov'),
('Gumyantsev'),
('Kovaleva'),
('Vorobyova'),
('Bulgakov'),
('Selivanov'),
('Kozlov'),
('Vlasova'),
('Karaseva'),
('Nikulin'),
('Nikonova'),
('Kuleshova'),
('Shevelev'),
('Zaitseva'),
('Yakovleva'),
('Filatov'),
('Danilova'),
('Isaeva'),
('Guseva'),
('Kondratieva'),
('Ivanova'),
('Boldyrev'),
('Kovalev'),
('Ponomareva'),
('Nazarov'),
('Lopatin'),
('Rudneva'),
('Vasilyeva'),
('Bulgakova'),
('Anisimov'),
('Vasiliev'),
('Kazakov'),
('Morozova'),
('Kovalev'),
('Zhukova'),
('Yakovlev'),
('Chernov'),
('Zuev'),
('Kiselyov'),
('Volkov'),
('Gorshkova'),
('Meshcheryakova'),
('Vinokurov'),
('Kryuchkova'),
('Alyoshina'),
('Egorov'),
('Krylova'),
('Kholodova'),
('Ivanov');

select * from employees;

--Таблица salary
--3)Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null
create table salary(
	id serial primary key,
	monthly_salary int not null
);

--4)Наполнить таблицу salary 15 строками:
insert into salary(monthly_salary)
values (1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

select * from salary;

--Таблица employee_salary
--5)Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
);

--6)	Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary(employee_id,salary_id)
values(1,3),
(2,1),
(3,1),
(4,5),
(5,1),
(6,7),
(8,3),
(9,2),
(10,9),
(11,4),
(12,5),
(13,6),
(14,7),
(15,8),
(16,9),
(17,10),
(18,11),
(19,12),
(20,13),
(21,14),
(22,15),
(23,16),
(24,1),
(25,2),
(26,3),
(27,9),
(28,4),
(29,5),
(30,7),
(81,8),
(72,9),
(73,10),
(75,1),
(76,2),
(77,3),
(78,4),
(79,6),
(80,7),
(89,1);
insert into employee_salary(employee_id,salary_id)
values(7,9);

select * from employee_salary;

--Таблица roles
--7)Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
create table roles(
	id serial primary key,
	role_name int unique not null
);

--8)Поменять тип столба role_name с int на varchar(30)
alter table roles
alter column role_name type varchar(30) using role_name::varchar(30);

--9)Наполнить таблицу roles 20 строками:
insert into roles(role_name)
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

select * from roles;

--Таблица roles_employee
--10)Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
--(внешний ключ для таблицы employees, поле id)
	foreign key (employee_id)
	references employees(id),
--(внешний ключ для таблицы roles, поле id)
	foreign key (role_id)
	references roles (id)
);

--11)Наполнить таблицу roles_employee 40 строками:
insert into roles_employee(employee_id, role_id)
values(2, 1),
(32, 3),
(33, 5),
(34, 6),
(35, 2),
(42, 7),
(43, 8),
(44, 9),
(45, 10),
(52, 11),
(53, 13),
(54, 12),
(55, 14),
(62, 15),
(63, 1),
(64, 2),
(65, 4),
(66, 4),
(67, 7),
(68, 8),
(69, 9),
(70, 10),
(20, 4),
(21, 1),
(22, 2),
(23, 12),
(24, 14),
(25, 4),
(26, 8),
(27, 11),
(28, 2),
(29, 10),
(30, 1),
(31, 2),
(40, 15),
(41, 11),
(1, 12),
(3, 5),
(6, 9),
(7, 7);

select * from roles_employee;

