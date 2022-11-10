CREATE DATABASE new_employees_test_db;

USE new_employees_test_db;

CREATE TABLE departments (
     dept_no INT UNSIGNED NOT NULL AUTO_INCREMENT,
     dept_name VARCHAR(100) NOT NULL,
     PRIMARY KEY (dept_no)
);

INSERT INTO departments (dept_name) VALUES
('human resources'),
('finance'),
('sales');

CREATE TABLE employees (
   emp_no INT UNSIGNED NOT NULL AUTO_INCREMENT,
   first_name VARCHAR(255),
   last_name VARCHAR(255),
   email VARCHAR(100) NOT NULL,
   PRIMARY KEY (emp_no)
);

INSERT INTO employees (emp_no, first_name, last_name, email) VALUES
(10001, 'Jason', 'Merrell', 'jason.merrell@codeup.com'),
(10002,'Kelly', 'Clarkson', 'kelly@clarkson.com'),
(10003,'Billy', 'Bob', 'billy@bob.com'),
(10004,'Ariana', 'Grande', 'ariana@grande.com');

CREATE TABLE dept_emp (
    dept_no INT UNSIGNED NOT NULL,
    emp_no INT UNSIGNED NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);
INSERT INTO dept_emp (dept_no, emp_no, from_date, to_date) VALUES
(1, 10001, '2008-01-01', '2011-12-31'),
(1, 10001, '2012-01-01', '9999-01-01');

INSERT INTO dept_emp (dept_no, emp_no, from_date, to_date) VALUES          (2, 10002, '2012-01-01', '9999-01-01'),
(3, 10003, '2012-01-01', '9999-01-01');




##Query

SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM dept_emp;

SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name', departments.dept_name FROM employees JOIN dept_emp ON dept_emp.emp_no = employees.emp_no JOIN departments ON departments.dept_no = dept_emp.dept_no WHERE dept_emp.to_date = '9999-01-01';