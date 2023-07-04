9876543210987654321
--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employees.employee_name, salaryes.monthly_salary from employees 
inner join salaryes on salaryes.id = employees.id 
left join monthly_salaryees on monthly_salaryees.employee_id = employees.id;

-- 2. Вывести всех работников у которых ЗП меньше 2000.
 
select employees.employee_name, salaryes.monthly_salary from employees 
inner join salaryes on salaryes.id = employees.id 
left join monthly_salaryees on monthly_salaryees.employee_id = employees.id
where salaryes.monthly_salary < 2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 
select employees.employee_name, salaryes.monthly_salary from employees
full outer join salaryes  on salaryes.id = employees.id 
full outer join monthly_salaryees on monthly_salaryees.employee_id = employees.id
where employees.employee_name is null and salaryes.monthly_salary notnull 

 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 
 select employees.employee_name, salaryes.monthly_salary from employees
full outer join salaryes  on salaryes.id = employees.id 
full outer join monthly_salaryees on monthly_salaryees.employee_id = employees.id
where employees.employee_name is null and salaryes.monthly_salary < 2000

 5. Найти всех работников кому не начислена ЗП.
 
  select employees.employee_name, salaryes.monthly_salary from employees
full outer join salaryes  on salaryes.id = employees.id 
full outer join monthly_salaryees on monthly_salaryees.employee_id = employees.id
where employees.employee_name notnull and salaryes.monthly_salary is null

 6. Вывести всех работников с названиями их должности.
 
 select employees.employee_name, roles_two.role_name from employees
inner join roles_employee on roles_employee.employee_id = employees.id 
inner join roles_two on roles_two.id = roles_employee.role_id

 7. Вывести имена и должность только Java разработчиков.
 
  select employees.employee_name, roles_two.role_name from employees
inner join roles_employee on roles_employee.employee_id = employees.id 
inner join roles_two on roles_two.id = roles_employee.role_id
where roles_two.role_name LIKE '%Java developer%' 

 8. Вывести имена и должность только Python разработчиков.
 
  select employees.employee_name, roles_two.role_name from employees
inner join roles_employee on roles_employee.employee_id = employees.id 
inner join roles_two on roles_two.id = roles_employee.role_id
where roles_two.role_name LIKE '%Python developer%' 
  
 
 9. Вывести имена и должность всех QA инженеров.
 
select employees.employee_name, roles_two.role_name from employees
full outer join roles_employee on roles_employee.employee_id = employees.id 
full outer join roles_two on roles_two.id = roles_employee.role_id
where roles_two.role_name LIKE '%engineer%' 
 QA_Manual


 10. Вывести имена и должность ручных QA инженеров.
 
 select employees.employee_name, roles_two.role_name from employees
full outer join roles_employee on roles_employee.employee_id = employees.id 
full outer join roles_two on roles_two.id = roles_employee.role_id
where roles_two.role_name LIKE '%QA_Manual%' 

 11. Вывести имена и должность автоматизаторов QA
 
 select employees.employee_name, roles_two.role_name from employees
full outer join roles_employee on roles_employee.employee_id = employees.id 
full outer join roles_two on roles_two.id = roles_employee.role_id
where roles_two.role_name LIKE '%Automation QA%' 
 
 12. Вывести имена и зарплаты Junior специалистов
 
  select employees.employee_name, salaryes.monthly_salary from employees
inner join roles_employee on roles_employee.employee_id = employees.id 
inner join roles_two on roles_two.id = roles_employee.role_id
inner join salaryes on  salaryes.id = employees.id
where roles_two.role_name LIKE '%Junior%'
 
 13. Вывести имена и зарплаты Middle специалистов
 
  select employees.employee_name, salaryes.monthly_salary from employees
inner join roles_employee on roles_employee.employee_id = employees.id 
inner join roles_two on roles_two.id = roles_employee.role_id
inner join salaryes on  salaryes.id = employees.id
where roles_two.role_name LIKE '%Middle%'
 
 14. Вывести имена и зарплаты Senior специалистов
 
  select employees.employee_name, salaryes.monthly_salary from employees
inner join roles_employee on roles_employee.employee_id = employees.id 
inner join roles_two on roles_two.id = roles_employee.role_id
inner join salaryes on  salaryes.id = employees.id
where roles_two.role_name LIKE '%Senior%'
 
 15. Вывести зарплаты Java разработчиков
 
 select salaryes.monthly_salary from employees
inner join roles_employee on roles_employee.employee_id = employees.id 
inner join roles_two on roles_two.id = roles_employee.role_id
inner join salaryes on  salaryes.id = employees.id
where roles_two.role_name LIKE '%Java d%'
 
 16. Вывести зарплаты Python разработчиков
 
  select salaryes.monthly_salary from employees
inner join roles_employee on roles_employee.employee_id = employees.id 
inner join roles_two on roles_two.id = roles_employee.role_id
inner join salaryes on  salaryes.id = employees.id
where roles_two.role_name LIKE '%Python%'
 
 17. Вывести имена и зарплаты Junior Python разработчиков
 
 select employees.employee_name, salaryes.monthly_salary from employees
inner join roles_employee on roles_employee.employee_id = employees.id 
inner join roles_two on roles_two.id = roles_employee.role_id
inner join salaryes on  salaryes.id = employees.id
where roles_two.role_name LIKE '%Junior Python%'
 
 18. Вывести имена и зарплаты Middle JS разработчиков
 
  select employees.employee_name, salaryes.monthly_salary from employees
inner join roles_employee on roles_employee.employee_id = employees.id 
inner join roles_two on roles_two.id = roles_employee.role_id
inner join salaryes on  salaryes.id = employees.id
where roles_two.role_name LIKE '%Middle JavaS%'
 
 19. Вывести имена и зарплаты Senior Java разработчиков
 
  select employees.employee_name, salaryes.monthly_salary from employees
inner join roles_employee on roles_employee.employee_id = employees.id 
inner join roles_two on roles_two.id = roles_employee.role_id
inner join salaryes on  salaryes.id = employees.id
where roles_two.role_name LIKE '%Senior Java d%'
 
 20. Вывести зарплаты Junior QA инженеров
 
   select employees.employee_name, salaryes.monthly_salary from employees
inner join roles_employee on roles_employee.employee_id = employees.id 
inner join roles_two on roles_two.id = roles_employee.role_id
inner join salaryes on  salaryes.id = employees.id
where roles_two.role_name LIKE '%Junior QA%'


 21. Вывести среднюю зарплату всех Junior специалистов
 
    select avg(salaryes.monthly_salary) from employees
inner join roles_employee on roles_employee.employee_id = employees.id 
inner join roles_two on roles_two.id = roles_employee.role_id
inner join salaryes on  salaryes.id = employees.id
where roles_two.role_name LIKE '%Junior%'
 
 22. Вывести сумму зарплат JS разработчиков
 
     select sum(salaryes.monthly_salary) from employees
inner join roles_employee on roles_employee.employee_id = employees.id 
inner join roles_two on roles_two.id = roles_employee.role_id
inner join salaryes on  salaryes.id = employees.id
where roles_two.role_name LIKE '%JavaScript%'
 
 23. Вывести минимальную ЗП QA инженеров
 
 select min(salaryes.monthly_salary) from employees
full outer join roles_employee on roles_employee.employee_id = employees.id 
full outer join roles_two on roles_two.id = roles_employee.role_id
full outer join salaryes on  salaryes.id = employees.id
where roles_two.role_name LIKE '%QA%'

 24. Вывести максимальную ЗП QA инженеров
 
 select max(salaryes.monthly_salary) from employees
full outer join roles_employee on roles_employee.employee_id = employees.id 
full outer join roles_two on roles_two.id = roles_employee.role_id
full outer join salaryes on  salaryes.id = employees.id
where roles_two.role_name LIKE '%QA%'
 
 25. Вывести количество QA инженеров
 
 select count(salaryes.monthly_salary) from employees
full outer join roles_employee on roles_employee.employee_id = employees.id 
full outer join roles_two on roles_two.id = roles_employee.role_id
full outer join salaryes on  salaryes.id = employees.id
where roles_two.role_name LIKE '%QA%'

 26. Вывести количество Middle специалистов.
 
 select count(salaryes.monthly_salary) from employees
full outer join roles_employee on roles_employee.employee_id = employees.id 
full outer join roles_two on roles_two.id = roles_employee.role_id
full outer join salaryes on  salaryes.id = employees.id
where roles_two.role_name LIKE '%Middle%'

 27. Вывести количество разработчиков
 
  select count(salaryes.monthly_salary) from employees
full outer join roles_employee on roles_employee.employee_id = employees.id 
full outer join roles_two on roles_two.id = roles_employee.role_id
full outer join salaryes on  salaryes.id = employees.id
where roles_two.role_name LIKE '%developer%'

 28. Вывести фонд (сумму) зарплаты разработчиков.
 
   select sum(salaryes.monthly_salary) from employees
full outer join roles_employee on roles_employee.employee_id = employees.id 
full outer join roles_two on roles_two.id = roles_employee.role_id
full outer join salaryes on  salaryes.id = employees.id
 
 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 
select salaryes.monthly_salary, employees.employee_name, roles_two.role_name from employees 
inner join roles_employee on roles_employee.employee_id = employees.id 
inner join roles_two on roles_two.id = roles_employee.role_id
inner join salaryes on  salaryes.id = employees.id
order by salaryes.monthly_salary asc
 
 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 
 select salaryes.monthly_salary, employees.employee_name, roles_two.role_name from employees 
inner join roles_employee on roles_employee.employee_id = employees.id 
inner join roles_two on roles_two.id = roles_employee.role_id
inner join salaryes on  salaryes.id = employees.id
where salaryes.monthly_salary < 2300 and salaryes.monthly_salary > 1700
order by salaryes.monthly_salary asc
 
 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 
  select salaryes.monthly_salary, employees.employee_name, roles_two.role_name from employees 
inner join roles_employee on roles_employee.employee_id = employees.id 
inner join roles_two on roles_two.id = roles_employee.role_id
inner join salaryes on  salaryes.id = employees.id
where salaryes.monthly_salary < 2300
order by salaryes.monthly_salary asc
 
 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
 
 select salaryes.monthly_salary, employees.employee_name, roles_two.role_name from employees 
inner join roles_employee on roles_employee.employee_id = employees.id 
inner join roles_two on roles_two.id = roles_employee.role_id
inner join salaryes on  salaryes.id = employees.id
where salaryes.monthly_salary = 2000 or salaryes.monthly_salary = 1100 or salaryes.monthly_salary = 1500
order by salaryes.monthly_salary asc
