select * from role_employee;
drop table roles_employee;

create table salary (
	id serial primary key,
	monthly_salary int not null
)

insert into salary(monthly_salary)
values (300),
(800),
(1200),
(1500),
(1800),
(2000),
(2300),
(2500),
(2700),
(3000),
(3200);
update salary
set monthly_salary = 5000
where id = 55;

create table roles (
	id serial primary key,
	role_title varchar(50) unique not null
);
insert into role(role_title)
values ('QA_Manual_junior'),
('QA_Manual_middle'),
('QA_Manual_senior'),
('Java_developer_junior'),
('Java_developer_senior'),
('Java_developer_middle'),
('Manager');

create table roles_salary (
	id serial primary key,
	role_id int not null,
	salary_id int not null,
	foreign key(role_id)
		references roles(id),
	foreign key(salary_id)
		references salary(id)
);
insert into roles_salary(role_id, salary_id)
values (7,7);

create table employees(id serial primary key,employee_name varchar(50) not null);
insert into employees(employee_name)
values ('Graf'),
('Киселев'),
('Гусев'),
('Дмитриев'),
('Королев'),
('Александров'),
('Фролов'),
('Кузьмин'),
('Сергеев'),
('Воробьев'),
('Романов'),
('Григорьев'),
('Яковлев'),
('Борисов'),
('Соловьев'),
('Зайцев'),
('Захаров'),
('Никитин'),
('Макаров'),
('Андреев'),
('Орлов'),
('Николаев'),
('Степанов'),
('Козлов'),
('Павлов'),
('Егоров'),
('Семенов'),
('Лебедев'),
('Алексеев'),
('Волков'),
('Морозов'),
('Федоров'),
('Новиков'),
('Михайлов'),
('Соколов'),
('Васильев'),
('Петров'),
('Попов'),
('Кузнецов'),
('Смирнов'),
('Иванов');

create table salaryees(id serial primary key,monthly_salary int not null);
insert into salaryees(monthly_salary)
values(1000),
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

create table monthly_salaryees (
id serial primary key,
employee_id int not null unique,
salary_id int not null
);
insert into monthly_salaryees(employee_id,salary_id)
values (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),
(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,22),(18,10),(19,13),(20,24),(21,21),(22,27),
(23,7),(24,4),(25,9),(26,13),(27,4),(28,2),(29,10),(30,13),(31,4),(32,1),(33,7),(34,7),(35,4),
(36,9),(37,13),(38,4),(39,2),(40,10),(41,13),(42,4),(43,1),(44,7);

create table roles_two(id serial primary key,role_name int NOT NULL);
alter table roles_two
alter column role_name TYPE varchar(50);
insert into roles_two(role_name) 
values ('Junior Python Developer'),
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

create table roles_employee(id serial primary key,employee_id int not null unique,role_id int not null);
insert into roles_employee(employee_id,role_id) values (1,2),(2,1),(3,2),(4,3),(5,4),(6,2),(7,5),(8,6),(9,7),(10,1),
(11,11),(12,12),(13,13),(14,14),(15,17),(16,15),(17,16),(18,18),(19,19),(20,20),
(21,19),(22,17),(23,3),(24,15),(25,14),(26,2),(27,2),(28,1),(29,3),(30,2),
(31,4),(32,5),(33,6),(34,4),(35,2),(36,7),(37,13),(38,12),(39,16),(40,3),
(41,8),(42,9);
