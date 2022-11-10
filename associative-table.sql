USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name', dept_name FROM employees AS e JOIN dept_emp AS de ON de.emp_no = e.emp_no JOIN departments AS d ON d.dept_no = de.dept_no WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

