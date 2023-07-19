# SQL теория
 
![alt text](https://github.com/MelikovGraf/GIT/assets/98654937/ad52c14b-53c0-4b72-8c70-d7dc90b6460f)

__SQL__ (Structured Query Language)
Язык структурированных запросов. Это стандартизированный язык программирования для работы с реляционными базами данных. Он используется для создания, изменения и управления данными в базах данных. SQL предоставляет набор команд и операторов для выполнения различных операций, таких как выборка данных, вставка, обновление и удаление записей, создание и изменение таблиц, управление пользователями и многое другое.

### Подмножества языка SQL:

- **DDL** (Data Definition Language, язык определения данных): DDL используется для создания и изменения структуры базы данных и ее объектов. Он включает следующие команды:

  + CREATE: Используется для создания объектов базы данных, таких как таблицы, индексы, представления (view) и другие.
  + ALTER: Позволяет изменять структуру существующих объектов базы данных, например, добавлять или удалять столбцы в таблице или изменять типы данных.
  + DROP: Используется для удаления объектов базы данных, таких как таблицы, индексы или представления.
  + TRUNCATE: Удаляет все данные из таблицы, но оставляет ее структуру.
  + RENAME: Позволяет переименовать объекты базы данных.
    
- **DML** (Data Manipulation Language, язык манипуляции данными): DML используется для вставки, обновления и удаления данных внутри таблиц. Он включает следующие команды:

  + `SELECT`: Используется для выборки данных из таблицы.
  + INSERT: Вставляет новые строки данных в таблицу.  
  + UPDATE: Изменяет существующие строки данных в таблице.
  + DELETE: Удаляет строки данных из таблицы.
  
- **TCL** (Transaction Control Language, язык управления транзакциями): TCL используется для управления транзакциями в базе данных. Он включает следующие команды:

  + COMMIT: Фиксирует все изменения, сделанные в рамках текущей транзакции.
  + ROLLBACK: Отменяет все изменения, сделанные в рамках текущей транзакции.
  + SAVEPOINT: Создает точку сохранения в рамках текущей транзакции, чтобы можно было выполнить откат до этой точки при необходимости.
- **DCL** (Data Control Language, язык управления данными): DCL используется для управления правами доступа и безопасностью базы данных. Он включает следующие команды:

  + GRANT: Предоставляет права доступа к объектам базы данных другим пользователям или ролям.
  + REVOKE: Отзывает предоставленные права доступа.
  + DENY: Запрещает доступ к объектам базы данных.
 
**БД** - база данных - программа для хранения данных
Существует несколько типов баз данных (БД), включая:

**Реляционные БД**
Нереляционные БД (NoSQL) - иерархические(в виде древовидной структуры), сетевые, объектно ориентированные, ключ-значение, документоориентированные, графовые
Нормализация и денормализация БД

- **Нормализация** - это процесс организации данных в базе данных для минимизации избыточности, обеспечения целостности данных и устранения аномалий при обновлении и удалении данных.

+ Данные не дублируются, каждая сущность в своей таблице, данные ссылаются друг на друга при необходимости, изменения в одной таблице по связям повлияют на остальные записи
  * Нормализация осуществляется с использованием нормальных форм, таких как первая нормальная форма (1NF), вторая нормальная форма (2NF), третья нормальная форма (3NF) и так далее. Чем выше нормальная форма, тем более строгие требования к структуре данных.
    - Первая нормальная форма (1NF):
      + Каждая ячейка в таблице должна содержать только одно значение.
      + В таблице не должно быть повторяющихся групп полей.
      + Каждая колонка должна иметь уникальное имя.
      + Каждая строка в таблице должна быть уникально идентифицируема
    - Вторая нормальная форма (2NF):
      + Вторая нормальная форма подразумевает все требования первой нормальной формы.
      + Кроме того, каждый неключевой атрибут (столбец) в таблице должен полностью зависеть от всего первичного ключа, а не от его части.
+ Денормализация - это процесс объединения данных из различных таблиц в одну, чтобы улучшить производительность запросов и упростить модель данных. Денормализация приводит к повторению данных и избыточности, но может быть полезной в случаях, когда требуется быстрый доступ к данным и уменьшение сложности запросов.
  * Такая таблица используется с целью получить информацию из одного места и иметь возможность сортировать и фильтровать информацию в удобном для потребителя информации виде. Такая таблица имеет дубликаты, занимает больше места, ее данные сложнее изменять (в силу дублирования).

Чаще всего таблицы находятся в нормализованном состоянии и приводятся в денормализованное для отображения необходимой информации.

**СУБД** - система управления базой данных
Программное обеспечение, которое позволяет управлять, организовывать и обрабатывать данные в базе данных. СУБД предоставляет средства для создания, модификации и удаления данных, а также для выполнения запросов и администрирования базы данных. Содержит пользователей и БД. Три самые популярные СУБД - MySQL, PostgreSQL, Oracle, Microsoft SQL Server и др, выбор базы данных зависит от требований вашего проекта, масштаба приложения, бюджета и предпочтений разработчиков.

**IDE** - интегрированная среда разработки, которая предоставляет разработчикам удобную и эффективную среду для разработки программного обеспечения.
IDE для СУБД:

**pgAdmin** - это популярное графическое средство администрирования для PostgreSQL, одной из ведущих реляционных баз данных. Оно предоставляет удобный и мощный интерфейс для управления и администрирования PostgreSQL-серверами и базами данных.
DBeaver - это универсальное средство администрирования баз данных и клиент SQL, которое поддерживает различные СУБД (системы управления базами данных). Он предоставляет графический интерфейс и набор инструментов для работы с различными типами баз данных.

### Типы даннных в SQL
- Числовые типы данных:

  + INTEGER: Целочисленный тип данных, представляющий целые числа.
  + FLOAT/REAL: Тип данных с плавающей запятой, используется для представления чисел с плавающей запятой.
  + DECIMAL/NUMERIC: Тип данных, используемый для хранения чисел с фиксированной точностью и масштабом.

- Символьные типы данных:

  + CHAR: строковый тип данных фиксированной длины, если данные меньше этой длины, они дополняются пробелами справа. CHAR(50)
  + VARCHAR: строковый тип данных переменной длины, который может хранить строки различной длины. VARCHAR(100)
  + TEXT: Тип данных для хранения больших текстовых блоков.

- Даты и времена:

  + DATE: Тип данных для хранения даты.
  + TIME: Тип данных для хранения времени.
  + TIMESTAMP/DATETIME: Тип данных для хранения комбинированных значений даты и времени.

- Булевы типы данных:

  + BOOLEAN: Тип данных, представляющий логическое значение True или False.

- Бинарные типы данных:

  + BINARY: Фиксированной длины бинарный тип данных.
  + VARBINARY: Переменной длины бинарный тип данных.
  + BLOB: Тип данных для хранения больших двоичных объектов.

- Другие типы данных:

  + ENUM: Тип данных, который ограничивает значение столбца на заданный набор допустимых значений.
  + JSON: Тип данных, используемый для хранения и обработки данных в формате JSON.
  + XML: Тип данных, используемый для хранения и обработки данных в формате XML.

**Ограничения данных в SQL**:
- Ограничение первичного ключа (PRIMARY KEY): Задает один или несколько столбцов таблицы в качестве первичного ключа, уникально идентифицирующего каждую запись в таблице. Предотвращает вставку дублирующихся значений или NULL значений в столбцы первичного ключа.

- Ограничение уникальности (UNIQUE): Запрещает вставку или обновление столбца с дублирующимися значениями. Ограничение уникальности может быть применено к одному или нескольким столбцам таблицы.

- Ограничение NOT NULL: Запрещает вставку NULL значения в столбец. Предотвращает отсутствие обязательных значений в столбце.

- Внешний ключ (FOREIGN KEY): Устанавливает связь между двумя таблицами, связывая столбец внешнего ключа в одной таблице со столбцом первичного ключа в другой таблице. Предотвращает вставку значений, которые не имеют соответствующих значений в связанной таблице.

- Ограничение проверки (CHECK): Определяет пользовательское условие, которое должно быть истинным для вставки или обновления данных в столбце. Позволяет определить специфичные правила или ограничения на значения столбцов.
```
CREATE TABLE employees (
  age INT CHECK (age >= 18),
);
```
Ограничение DEFAULT : Ограничение DEFAULT позволяет установить значение по умолчанию для столбца. Если при вставке строки не указано значение для столбца, будет использовано значение по умолчанию.
```
CREATE TABLE customers (
  registration_date DATE DEFAULT CURRENT_DATE
);
```
Ограничение INDEX : Ограничение INDEX используется для создания индекса на один или несколько столбцов таблицы. Индексы ускоряют поиск и сортировку данных, улучшая производительность запросов.
```
CREATE TABLE employees (
  email VARCHAR(100),
  INDEX idx_email (email)
);
```
Ключи
Первичный ключ (PRIMARY KEY): Первичный ключ используется для уникальной идентификации каждой записи в таблице. Первичный ключ должен быть уникальным для каждой записи и не может содержать дублирующиеся или NULL значения. В таблице может быть только один первичный ключ, и он может состоять из одного или нескольких столбцов. Первичный ключ может быть автоматически генерируемым (например, с помощью автоинкрементного столбца) или заданным явным образом. Пример:
```
CREATE TABLE employees (
  employee_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50)
);
```
Внешний ключ (FOREIGN KEY): Внешний ключ служит для установления связи между двумя таблицами и указывает на столбец (или столбцы) в одной таблице, который ссылается на значения столбца (или столбцов) первичного ключа или уникального ограничения в другой таблице. Внешний ключ обеспечивает ссылочную целостность, гарантируя, что значения во внешнем ключе соответствуют значениям в связанном столбце первичного ключа. Внешний ключ может быть опциональным (NULL значения разрешены) или обязательным (NOT NULL), в зависимости от требований. При удалении или обновлении записей в таблице с первичным ключом, внешние ключи, ссылающиеся на эти записи, могут быть автоматически удалены или обновлены с использованием ограничения CASCADE.
```
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
```
В этом примере таблица "orders" содержит внешний ключ "customer_id", который ссылается на столбец "customer_id" в таблице "customers". Внешний ключ обеспечивает связь между таблицами "orders" и "customers", где значения "customer_id" в "orders" должны существовать в столбце "customer_id" в "customers".

Основные SQL запросы с примерами
Создание таблицы:
```
CREATE TABLE customers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) not null,
  email VARCHAR(50) UNIQUE,
  FOREIGN KEY (name) REFERENCES orders (id)
);
```
id - это имя столбца, который будет содержать идентификаторы.

serial (/INT) - это тип данных, который обозначает автоинкрементируемое целочисленное значение. В большинстве реляционных баз данных, таких как PostgreSQL, serial является псевдонимом для типа данных INTEGER, который автоматически увеличивается с каждой вставкой новой записи.

primary key - это определение столбца как первичного ключа. Первичный ключ используется для уникальной идентификации каждой строки в таблице.

not null - при вставке новой записи в таблицу "customers" значения в этих столбцах должны быть указаны и не могут быть пустыми или NULL

UNIQUE - Ограничение UNIQUE гарантирует, что каждое значение в этом столбце будет уникальным, т.е. ни один клиент не сможет иметь одинаковый адрес электронной почты.

FOREIGN KEY (name) REFERENCES orders (id) - определение внешнего ключа, который связывает столбец "name" в таблице "customers" со столбцом "id" в таблице "orders". Это означает, что значения в столбце "name" должны существовать в столбце "id" таблицы "orders", обеспечивая ссылочную целостность.

Вставка данных в таблицу:
```
INSERT INTO customers (id, name, email)
VALUES (1, 'John Doe', 'john@example.com');
INSERT INTO employees (employee_name)
SELECT 'employee' || generate_series(1, 70);
Запрос generate_series(1, 70) создает серию чисел от 1 до 70, и для каждого числа выполняется вставка строки в таблицу "employees". Оператор || используется для конкатенации строки "employee" с числом из серии
```

Выборка всех данных из таблицы:
```
SELECT * FROM customers;
```
Выборка данных с условием:
```
SELECT * FROM customers WHERE name = 'John Doe';
```
Обновление таблицы
Добавление нового столбца в таблицу:
```
  ALTER TABLE users
  ADD age INT;
```
Изменение типа данных столбца:
```
  ALTER TABLE users
  ALTER COLUMN age TYPE VARCHAR(10);
```
Изменение имени столбца:
```
ALTER TABLE users
RENAME COLUMN age TO age_group;
```
Удаление столбца из таблицы:
```
ALTER TABLE users
DROP COLUMN age_group;
```
Добавление ограничения PRIMARY KEY:
```
ALTER TABLE users
ADD CONSTRAINT pk_users PRIMARY KEY (id);
```
Обновление данных в таблице:
```
UPDATE customers SET email = 'johndoe@example.com' WHERE id = 1;
```
Удаление таблицы:
```
DROP TABLE customers;
```
Удаление всех данных из таблицы, но оставляет ее структуру
```
TRUNCATE TABLE customers;
```
Удаление строк данных из таблицы
```
DELETE FROM customers WHERE id = 1;
```
Использование оператора DISTINCT для выборки уникальных значений:

```
SELECT DISTINCT category FROM products; -- Возвращает список уникальных категорий продуктов
SELECT DISTINCT city FROM customers; -- Возвращает список уникальных городов клиентов
Сортировка данных по возрастанию или убыванию ORDER BY:
SELECT * FROM customers ORDER BY name ASC; -- Сортировка по возрастанию
SELECT * FROM customers ORDER BY name DESC; -- Сортировка по убыванию
Выборка данных с условиями WHERE:
Использование операторов AND и OR для создания составных условий:
SELECT * FROM products WHERE price > 50 AND category = 'Electronics'; -- Выбирает продукты из категории 'Electronics' с ценой выше 50
SELECT * FROM customers WHERE city = 'New York' OR city = 'Los Angeles'; -- Выбирает клиентов из городов 'New York' или 'Los Angeles'
```

Использование оператора IN:

```
SELECT * FROM products WHERE category IN ('Electronics', 'Clothing');
Использование оператора BETWEEN для выборки данных в заданном диапазоне:
SELECT * FROM products WHERE price BETWEEN 10 AND 50; -- Выбирает все продукты с ценой от 10 до 50
SELECT * FROM orders WHERE order_date BETWEEN '2022-01-01' AND '2022-12-31'; -- Выбирает все заказы в определенном периоде
Использование оператора LIKE для поиска по шаблону:
SELECT * FROM customers WHERE name LIKE 'J%'; -- Находит все имена, начинающиеся с 'J'
SELECT * FROM customers WHERE email LIKE '%example.com'; -- Находит все email, заканчивающиеся на 'example.com'
Использование условий NULL для проверки наличия или отсутствия значений:
SELECT * FROM products WHERE description IS NULL; -- Выбирает продукты, у которых нет описания
SELECT * FROM customers WHERE phone_number IS NOT NULL; -- Выбирает клиентов с указанным номером телефона
Использование подзапросов для выполнения вложенных запросов:
SELECT * FROM products WHERE category_id IN (SELECT id FROM categories WHERE name = 'Electronics'); -- Выбирает все продукты из категории 'Electronics'
SELECT * FROM employees WHERE department_id = (SELECT id FROM departments WHERE name = 'Sales'); -- Выбирает всех сотрудников из отдела 'Sales'
```

Выборка данных с условиями HAVING: Оператор HAVING, в отличии от WHERE, используется с оператором GROUP BY для фильтрации группированных данных. Он применяет условие фильтрации к группам строк, созданным оператором GROUP BY, и позволяет фильтровать результаты на основе агрегатных функций
SELECT category, COUNT(*) as total_count
FROM products
GROUP BY category
HAVING COUNT(*) > 5;
Группировка данных GROUP BY с использованием агрегатных функций:
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;
Использование агрегатных функций SUM, COUNT, AVG, MAX, MIN для вычисления сумм, средних значений и других статистических показателей:

```
SELECT SUM(salary) AS sum_salary FROM employees; -- Вычисление суммарной зарплаты всех работников
SELECT COUNT(*) AS total_customers FROM customers; -- Вычисление общего количества записей в таблице
SELECT AVG(salary) AS average_salary FROM employees; -- Вычисление средней зарплаты
SELECT MAX(price) AS max_price FROM products; -- Вычисление максимальной цены
SELECT MIN(price) AS min_price FROM products; -- Вычисление минимальной цены
```

Объединение данных из нескольких таблиц JOIN:
INNER JOIN:
возвращает только те строки, которые имеют совпадения в обоих таблицах, основываясь на условии объединения.
INNER JOIN используется по умолчанию, если не указан другой тип JOIN.

```
SELECT customers.name, orders.order_date
FROM customers
JOIN orders ON customers.id = orders.customer_id;
```

LEFT JOIN:
возвращает все строки из левой (первой) таблицы и соответствующие строки из правой (второй) таблицы, основываясь на условии объединения.
Если в правой таблице нет совпадающих строк, то значения для столбцов правой таблицы будут NULL.

RIGHT JOIN:
возвращает все строки из правой (второй) таблицы и соответствующие строки из левой (первой) таблицы, основываясь на условии объединения.
Если в левой таблице нет совпадающих строк, то значения для столбцов левой таблицы будут NULL.

FULL JOIN:
возвращает все строки из обеих таблиц и объединяет их на основе условия объединения.
Если в одной из таблиц нет совпадающих строк, то значения для соответствующих столбцов будут NULL.

CROSS JOIN:
выполняет комбинаторное объединение всех строк из первой таблицы со всеми строками из второй таблицы, что приводит к получению декартова произведения двух таблиц.
CROSS JOIN не требует указания условия объединения, и результатом является полный набор комбинаций всех строк из обеих таблиц.

```
SELECT table1.column1, table2.column2
FROM table1
CROSS JOIN table2;
```

SELF JOIN:
используется для объединения таблицы самой с собой. Это позволяет обрабатывать данные из одной таблицы в контексте других данных в той же таблице.
SELF JOIN требует указания псевдонимов таблицы для различения между первым и вторым вхождениями таблицы.

```
SELECT t1.column1, t2.column2
FROM table AS t1
JOIN table AS t2 ON t1.common_column = t2.common_column;
```

NATURAL JOIN:
объединяет две таблицы на основе всех столбцов с одинаковыми именами. Он автоматически находит столбцы с одинаковыми именами в обеих таблицах и выполняет объединение по ним.
NATURAL JOIN может быть удобным, если структура данных в обеих таблицах хорошо соответствует друг другу.
Использование оператора UNION для объединения таблиц вертикально:

```
UNION
SELECT customer_name, email
FROM Customers
UNION
SELECT supplier_name, email
FROM Suppliers;
```

UNION ALL
сохраняет все строки из каждого SELECT запроса, включая возможные дубликаты. Если вы хотите удалить дубликаты из объединенного результата, вы можете использовать оператор UNION вместо UNION ALL.
Использование оператора LIMIT для ограничения количества возвращаемых строк:

```
SELECT * FROM products LIMIT 10; -- Возвращает только первые 10 продуктов из таблицы
SELECT * FROM orders LIMIT 100, 50; -- Возвращает 50 заказов, начиная со 101-го заказа
```

Использование функций для обработки строк и дат:

```
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM employees; -- Объединяет значения двух столбцов в одну строку
SELECT DATE_FORMAT(order_date, '%Y-%m-%d') AS formatted_date FROM orders; -- Форматирует дату в определенном формате
```
