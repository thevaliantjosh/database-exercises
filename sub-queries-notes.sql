USE employees;

/*SELECT column_a, column_b, column_c
  FROM table_a
  WHERE column_a IN (
  SELECT column_a
  FROM table_b
  WHERE column_b = true)*/

#Finding all the department managers First, Last, and Birthdate
SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    )
LIMIT 10;

/*Subqueries can also be useful while you are building INSERT / UPDATE statements where you don't know exactly what ID needs to be inserted as a foreign key as the following example demonstrates
  INSERT INTO users (name, email, role_id)
  VALUES ('fer', 'fer@codeup.com',
  SELECT id from roles WHERE name = 'commenter'
  );*/
