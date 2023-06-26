create table salary (
	id serial primary key,
	monthly_salary int not null
);

create table roles (
	id serial primary key,
	role_title varchar(50) unique not null
);

create table roles_salary (
	id serial primary key,
	role_id int not null,
	salary_id int not null,
	foreign key(role_id)
		references roles(id),
	foreign key(salary_id)
		references salary(id)
);

insert into roles(role_title)
values ('QA_Manual_junior'),
('QA_Manual_middle'),
('QA_Manual_senior'),
('Java_developer_junior'),
('Java_developer_senior'),
('Java_developer_middle'),
('Manager');

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

insert into roles_salary(role_id, salary_id)
values (7,7);


select * from roles;
select * from roles_salary;

alter table roles
add column parking int;

alter table roles 
rename column parking to taxi;

alter table roles
drop column taxi;

select * from salary;
update salary
set monthly_salary = 5000
where id = 55;

delete from salary
where id = 18;  


create table employees (id serial primary key,employee_name varchar(50) not null);
insert into employees(employee_name)
values ('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf'),
('Graf');
select * from employees;

create table salaryes (id serial primary key,monthly_salary int not null);
insert into salaryes(monthly_salary)
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
values (3,7),(1,4),(5,9),(40,13),(23,4),(11,2),(51,10),(15,13),(25,4),(16,1),(33,7),(223,7),(21,4),(22971,9),(240,13),(123,4),(211,2),(251,10),(215,13),(225,4),(216,1),(233,7),
(113,7),(111,4),(115,9),(1140,13),(1123,4),(1111,2),(1151,10),(1115,13),(1125,4),(1116,1),(1133,7),(11223,7),(1121,4),
(3225,9),(1240,13),(3123,4),(8211,2),(2512,10),(2195,13),(8225,4),(6216,1),(3233,7);
select * from monthly_salaryees;

create table roles_two(id serial primary key,role_name varchar(50));
--alter table roles_two alter column role_name varchar(50);
--insert into roles_two(role_name) values ('Junior Python Developer'),
--('Middle Python developer'),
--('Senior Python developer'),
--('Junior Java developer)',
--('Middle Java developer'),
--('Senior Java developer'),
--('Junior JavaScript developer'),
--('Middle JavaScript developer'),
--('Senior JavaScript developer'),
--('Junior Manual QA engineer'),
--('Middle Manual QA engineer'),
--('Senior Manual QA engineer'),
--('Project Manager'),
--('Designer'),
--('HR'),
--('CEO'),
--('Sales manager'),
--('Junior Automation QA engineer'),
--('Middle Automation QA engineer'),
--('Senior Automation QA engineer');

select * from roles_two;

create table roles_employee(id serial primary key,employee_id int not null unique,role_id int not null);
insert into roles_employee(employee_id,role_id) values (337,2),(3320,40),(333,9),(335,13),(3323,4),(3311,2),(1330,9),(2332,13),(2331,3),(3334,4),(633,7),(9337,2),(93320,40),(3393,9),
(93135,13),(9223,4),(9311,2),(9410,9),(9221,13),(9231,3);
select * from roles_employee;