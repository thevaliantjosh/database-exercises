USE employees;

SELECT * FROM employees e;

SHOW INDEXES FROM employees;
SHOW TABLES;

SHOW INDEXES FROM employees;
SHOW INDEXES FROM salaries;
SHOW INDEXES FROM roles;
SHOW INDEXES FROM titles;
SHOW INDEXES FROM users;
SHOW INDEXES FROM departments;


SHOW INDEXES FROM salaries;

SELECT salary FROM salaries WHERE salary BETWEEN 50000 AND 70000;

ALTER TABLE salaries ADD INDEX salary_index (salary);

ALTER TABLE salaries DROP INDEX salary_index;