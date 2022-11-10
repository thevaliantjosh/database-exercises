USE join_test_db;

CREATE TABLE roles (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    role_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (role_name) VALUES ('admin'), ('author'), ('reviewer'), ('commenter');

SELECT * FROM roles;

INSERT INTO users (user_name, email, role_id) VALUES ('Bob', 'bob@example.com', 1), ('Joe', 'joe@example.com', 2), ('Sally', 'sally@example.com', 3), ('Adam', 'adam@example.com', 3), ('Jane', 'jane@example.com', null), ('Mike', 'mike@example.com', null);

SELECT * FROM users;
SHOW INDEXES FROM users;
SHOW INDEXES FROM roles;
SELECT * FROM users;
SELECT * FROM roles;

/*Performs a basic join between the users table and roles table based on the relationship between the role_id in the users table and the id in the roles table*/
SELECT users.user_name AS name, roles.role_name AS 'role name' FROM users JOIN roles ON users.role_id = roles.id;

##Left Join: When you want to retrieve all the records from the left table, regardless of whether or not they have a corresponding record in the right table.
SELECT users.user_name AS name, roles.role_name AS 'role name' FROM users LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.user_name AS name, roles.role_name AS 'role name' FROM users RIGHT JOIN roles ON users.role_id = roles.id;