USE employees;

##SELECT columns FROM table LIMIT count [OFFSET count];

#1,981 rows
SELECT * FROM employees WHERE birth_date LIKE '1954-01%' ORDER BY birth_date, last_name;

#refactor to only display a certain LIMIT
SELECT * FROM employees WHERE birth_date LIKE '1954-01%' ORDER BY birth_date, last_name LIMIT 50;

SELECT * FROM employees WHERE birth_date LIKE '1954-01%' ORDER BY birth_date, last_name LIMIT 50 OFFSET 50;





