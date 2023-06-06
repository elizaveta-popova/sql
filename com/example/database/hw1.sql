postgres=# CREATE DATABASE sky_pro;
CREATE DATABASE
postgres=# \c sky_pro;
Вы подключены к базе данных "sky_pro" как пользователь "postgres".
sky_pro=# CREATE TABLE employee (
    sky_pro(# id BIGSERIAL NOT NULL PRIMARY KEY,
        sky_pro(# first_name VARCHAR(50) NOT NULL,
        sky_pro(# last_name VARCHAR(50) NOT NULL,
        sky_pro(# gender VARCHAR(6) NOT NULL,
        sky_pro(# age INT NOT NULL
        sky_pro(#  );
CREATE TABLE
sky_pro=# INSERT INTO employee (
sky_pro(# first_name, last_name, gender, age)
sky_pro-# VALUES ('Kate', 'Smith', 'female', 25);
INSERT 0 1
sky_pro=# INSERT INTO employee (
sky_pro(# first_name, last_name, gender, age)
sky_pro-# VALUES ('Max', 'Jonson', 'male', 45);
INSERT 0 1
sky_pro=# INSERT INTO employee (
sky_pro(#  first_name, last_name, gender, age)
sky_pro-#  VALUES ('Dane', 'Corwall', 'male', 30);
INSERT 0 1
sky_pro=# SELECT * FROM employee;
 id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
  1 | Kate       | Smith     | female |  25
  2 | Max        | Jonson    | male   |  45
  3 | Dane       | Corwall   | male   |  30
(3 ёЄЁюъш)
sky_pro=#  UPDATE employee SET first_name = 'John', last_name = 'Wilson', gender = 'male', age = 34 WHERE id = 1;
UPDATE 1
sky_pro=# SELECT * FROM employee;
 id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
  2 | Max        | Jonson    | male   |  45
  3 | Dane       | Corwall   | male   |  30
  1 | John       | Wilson    | male   |  34
(3 ёЄЁюъш)
sky_pro=# DELETE FROM employee WHERE id = 2;
DELETE 1
sky_pro=# SELECT * FROM employee;
 id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
  3 | Dane       | Corwall   | male   |  30
  1 | John       | Wilson    | male   |  34
(2 ёЄЁюъш)

//hw2
    sky_pro=# SELECT first_name AS Имя, last_name AS Фамилия FROM employee;
    Имя  | Фамилия
------+---------
    Dane | Corwall
    John | Wilson
    Mike | Potter
    Anne | Pitt
    Kate | Smith
(5 ёЄЁюъ)


    sky_pro=# SELECT * FROM employee WHERE age<30 OR age>50;
    id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
    4 | Mike       | Potter    | female |  25
    6 | Anne       | Pitt      | female |  25
(2 ёЄЁюъш)


    sky_pro=# SELECT * FROM employee WHERE age BETWEEN 30 AND 50;
    id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
    3 | Dane       | Corwall   | male   |  30
    1 | John       | Wilson    | male   |  34
    5 | Kate       | Smith     | female |  50
(3 ёЄЁюъш)


    sky_pro=# SELECT * FROM employee ORDER BY first_name DESC;
    id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
    4 | Mike       | Potter    | female |  25
    5 | Kate       | Smith     | female |  50
    1 | John       | Wilson    | male   |  34
    3 | Dane       | Corwall   | male   |  30
    6 | Anne       | Pitt      | female |  25
(5 ёЄЁюъ)


    sky_pro=# SELECT * FROM employee WHERE first_name LIKE '_____%';
    id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
(0 ёЄЁюъ)


    sky_pro=# SELECT * FROM employee WHERE first_name LIKE '____%';
    id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
    3 | Dane       | Corwall   | male   |  30
    1 | John       | Wilson    | male   |  34
    4 | Mike       | Potter    | female |  25
    6 | Anne       | Pitt      | female |  25
    5 | Kate       | Smith     | female |  50
(5 ёЄЁюъ)

    sky_pro=# UPDATE employee SET first_name='Anne' WHERE id=5;
    UPDATE 1
    sky_pro=# UPDATE employee SET first_name='Dane' WHERE id=1;
    UPDATE 1
    sky_pro=#  SELECT * FROM employee;
    id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
    3 | Dane       | Corwall   | male   |  30
    4 | Mike       | Potter    | female |  25
    6 | Anne       | Pitt      | female |  25
    5 | Anne       | Smith     | female |  50
    1 | Dane       | Wilson    | male   |  34
(5 ёЄЁюъ)


sky_pro=# SELECT first_name AS Имя, SUM (age) AS суммарный_возраст FROM employee GROUP BY Имя;
 Имя  | суммарный_возраст
------+-------------------
 Anne |                75
 Mike |                25
 Dane |                64
(3 ёЄЁюъш)


sky_pro=# SELECT first_name, age FROM employee WHERE age = (SELECT MIN (age) FROM employee);
 first_name | age
------------+-----
 Mike       |  25
 Anne       |  25
(2 ёЄЁюъш)

sky_pro=# SELECT first_name, MAX (age) FROM employee GROUP BY first_name HAVING COUNT (first_name) >1 ORDER BY 2;
 first_name | max
------------+-----
 Dane       |  34
 Anne       |  50
(2 ёЄЁюъш)