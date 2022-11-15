USE employees;

SELECT departments.dept_name AS 'Department Name',
       CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM employees
JOIN dept_manager
    ON dept_manager.emp_no = employees.emp_no
JOIN departments
    ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date = '9999-01-01' ORDER BY `Department Name`;


SELECT departments.dept_name AS 'Department Name',
       CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM employees
         JOIN dept_manager
              ON dept_manager.emp_no = employees.emp_no
         JOIN departments
              ON departments.dept_no = dept_manager.dept_no
WHERE gender = 'F' AND dept_manager.to_date = '9999-01-01' ORDER BY `Department Name`;

##Find the current titles of employees currently working in the Customer Service Department

SELECT COUNT(*) FROM employees;
SELECT title, COUNT(*) AS Total
FROM titles
JOIN dept_emp ON titles.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_emp.to_date > CURDATE()
AND titles.to_date > CURDATE()
AND departments.dept_name = 'Customer Service'
GROUP BY titles.title;

#Find the current Salary of all current managers

SELECT departments.dept_name AS 'Department Name',
       CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager', salaries.salary
FROM employees
         JOIN dept_manager
              ON dept_manager.emp_no = employees.emp_no
         JOIN departments
              ON departments.dept_no = dept_manager.dept_no
        JOIN salaries
            ON salaries.emp_no = employees.emp_no
WHERE dept_manager.to_date = '9999-01-01'
AND salaries.to_date = '9999-01-01'
ORDER BY `Department Name`;
