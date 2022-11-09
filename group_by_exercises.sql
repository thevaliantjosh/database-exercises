USE employees;

SELECT DISTINCT title FROM titles;



SELECT last_name FROM employees WHERE last_name LIKE 'E%E' GROUP BY last_name ORDER BY last_name;

SELECT DISTINCT last_name FROM employees WHERE last_name LIKE 'E%E' ORDER BY last_name;

SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name' FROM employees WHERE last_name LIKE 'E%E' GROUP BY `Full Name`, last_name ORDER BY last_name;

SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%Q%' AND last_name NOT LIKE '%QU%';

SELECT COUNT(last_name) AS '# of Unique Last Names', last_name FROM employees WHERE last_name LIKE '%Q%' AND last_name NOT LIKE '%QU%' GROUP BY last_name;

SELECT COUNT(*) AS 'Irena, Vidya, or Maya', gender FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') GROUP BY gender;



