# [COMMENTED OUT] Code below was to create the join_test_db:

# CREATE DATABASE join_test_db;
#
# USE join_test_db;
#
# CREATE TABLE roles (
#    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#    name VARCHAR(100) NOT NULL,
#    PRIMARY KEY (id)
# );
#
# CREATE TABLE users (
#    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#    name VARCHAR(100) NOT NULL,
#    email VARCHAR(100) NOT NULL,
#    role_id INT UNSIGNED DEFAULT NULL,
#    PRIMARY KEY (id),
#    FOREIGN KEY (role_id) REFERENCES roles (id)
# );
#
# INSERT INTO roles (name) VALUES ('admin');
# INSERT INTO roles (name) VALUES ('author');
# INSERT INTO roles (name) VALUES ('reviewer');
# INSERT INTO roles (name) VALUES ('commenter');
#
# INSERT INTO users (name, email, role_id) VALUES
#      ('bob', 'bob@example.com', 1),
#      ('joe', 'joe@example.com', 2),
#      ('sally', 'sally@example.com', 3),
#      ('adam', 'adam@example.com', 3),
#      ('jane', 'jane@example.com', null),
#      ('mike', 'mike@example.com', null);


# Join Example Database

USE join_test_db;

INSERT INTO users (name, email, role_id) VALUES
    ('kyle', 'kyle@example.com', 2),
    ('joe', 'joe@example.com', 2),
    ('jenna', 'jenna@example.com', 2),
    ('rick', 'rick@example.com', null);

SELECT users.id, users.name, roles.name FROM users JOIN roles on users.role_id = roles.id;

SELECT users.id, users.name, roles.name FROM users LEFT JOIN roles on users.role_id = roles.id;

SELECT users.id, users.name, roles.name FROM users RIGHT JOIN roles on users.role_id = roles.id;

SELECT COUNT(*), roles.name FROM users
LEFT JOIN roles on users.role_id = roles.id
GROUP BY roles.name;