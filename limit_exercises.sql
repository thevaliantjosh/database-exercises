USE employees;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC LIMIT 10;

SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5;

SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 4 OFFSET 46;


#underscore wildcard includes any number of characters followed by an e and then % which is any character after that
SELECT * FROM employees WHERE last_name LIKE '___e_';