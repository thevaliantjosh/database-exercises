USE employees;

#SELECT column FROM table ORDER BY column_name [ASC|DESC];

#Default is Ascending order
SELECT first_name, last_name FROM employees ORDER BY last_name;

SELECT first_name, last_name FROM employees ORDER BY last_name DESC;

SELECT first_name, last_name FROM employees ORDER BY last_name DESC, first_name ASC;