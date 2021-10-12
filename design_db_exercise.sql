DROP DATABASE design_db;

CREATE DATABASE IF NOT EXISTS design_db;

SHOW DATABASES;

USE design_db;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    description TINYTEXT NOT NULL,
    category VARCHAR(75) NOT NULL,
    user_id INT UNSIGNED,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE categories (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    goods VARCHAR(150),
    services VARCHAR(150),
    PRIMARY KEY (id)
);

CREATE TABLE ad_category (
    ad_id INT UNSIGNED NOT NULL,
    category_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (ad_id) REFERENCES ads (id),
    FOREIGN KEY (category_id) REFERENCES categories (id)
);

DESCRIBE users;
DESCRIBE ads;
DESCRIBE categories;
DESCRIBE ad_category;

########################################################

INSERT INTO users (email, password) VALUES
('kyle@example.com', 'password123'),
('skye@example.com', 'password123'),
('patrick@example.com', 'password123'),
('serguio@example.com', 'password123');

SELECT * FROM users;

INSERT INTO ads (title, description, category, user_id) VALUES
('Title1', 'Description1', 'Category1', 1),
('Title2', 'Description2', 'Category2', 2),
('Title3', 'Description3', 'Category3', 3),
('Title4', 'Description4', 'Category4', 4);

SELECT * FROM ads;

INSERT INTO categories (goods, services) VALUES
(NULL,'lawn mower'),
(NULL,'babysitter'),
('furniture', NULL),
('vehicles', NULL);

SELECT * FROM categories;

#######################################################

SELECT email FROM users u
 JOIN ads a on u.id = a.user_id
WHERE a.title = 'Title1';

SELECT c.goods, c.services FROM categories c
    JOIN ads a ON c.id = a.id
WHERE a.title = 'Title2';

SELECT a.title FROM ads a
    JOIN categories c on c.id = a.id
WHERE c.goods = 'furniture';

SELECT * FROM ads a
    JOIN users u on u.id = a.user_id
WHERE u.email = 'patrick@example.com';