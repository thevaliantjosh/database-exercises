USE employees;

/*Aliases are used to myke temporary name for joins, or to change the output of a columns name*/

SELECT CONCAT (first_name, ' ', last_name) AS 'Full Name' FROM employees LIMIT 25;

SELECT CONCAT (first_name, ' ', last_name) AS 'Full Name' FROM employees ORDER BY `Full Name` LIMIT 25;

SELECT hire_date, COUNT(*) FROM employees GROUP BY hire_date ORDER BY COUNT(*) DESC LIMIT 10;

SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name' FROM employees AS emp GROUP BY `Full Name`, last_name ORDER BY last_name LIMIT 25;
