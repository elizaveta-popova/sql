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

