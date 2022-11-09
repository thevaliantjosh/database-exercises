USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name' FROM employees WHERE first_name LIKE 'e%' AND last_name LIKE  '%e' ORDER BY last_name;

SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name', birth_date AS 'Christmas Birthdays' FROM employees WHERE DAYOFMONTH(birth_date) = 25 AND MONTH(birth_date) = 12 ORDER BY last_name DESC, YEAR(birth_date);

SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name', birth_date AS 'Christmas Birthdays', hire_date AS '90''s Hires', DATEDIFF(CURDATE(), hire_date) AS '# Of Days at Company' FROM employees
                          WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
                          AND MONTH(birth_date) = 12
                          AND DAY(birth_date) = 25
                          ORDER BY birth_date, YEAR(hire_date)DESC;
