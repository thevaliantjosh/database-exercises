USE employees;

#Aggregate Functions

SELECT COUNT( DISTINCT last_name) AS '# of First Names', gender FROM employees GROUP BY gender;

SELECT AVG(DATEDIFF(hire_date, birth_date))/365 FROM employees;

SELECT MIN(DATEDIFF(hire_date, birth_date))/365 FROM employees;

SELECT MAX(DATEDIFF(hire_date, birth_date))/365 FROM employees;

SELECT DISTINCT first_name FROM employees GROUP BY first_name;

SELECT COUNT(first_name) AS '# Of Duplicate Names', first_name AS 'Name' FROM employees GROUP BY first_name ORDER BY COUNT(first_name) DESC;

SELECT hire_date, COUNT(*) FROM employees GROUP BY hire_date ORDER BY COUNT(*) DESC LIMIT 10;

SELECT COUNT(*) FROM employees;