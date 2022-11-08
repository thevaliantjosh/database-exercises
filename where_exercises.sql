USE employees;

#709 rows
SELECT * FROM employees WHERE first_name IN('Irena', 'Vidya', 'Maya') ORDER BY emp_no;

/*same result but using OR instead
  709 rows
  Then getting those same name, but male only*/
SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') ORDER BY emp_no;

#441 rows
SELECT * FROM employees WHERE first_name IN('Irena', 'Vidya', 'Maya') AND gender = 'M' ORDER BY emp_no;

#7,330 rows
SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY last_name, emp_no;

#1,873 rows
SELECT * FROM employees WHERE last_name LIKE '%q%' ORDER BY last_name, emp_no;

/*Finding all empolyees whose last name starts OR ends with 'E'
  30,727 rows*/
SELECT * FROM employees WHERE last_name LIKE '%E' OR last_name LIKE 'E%' ORDER BY last_name;

/*Finding all employees Whose last name starts and ends with an 'E'
  899 rows*/
SELECT * FROM employees WHERE last_name LIKE 'E%E' ORDER BY last_name, emp_no;

/*Finding all employees with 'q' in their last name but no 'qu'
  547 rows*/
SELECT * FROM employees WHERE last_name NOT LIKE '%QU%' AND last_name LIKE '%Q%' ORDER BY last_name, emp_no;
