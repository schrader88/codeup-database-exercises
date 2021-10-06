USE employees;

SHOW TABLES;

DESCRIBE departments;

DESCRIBE dept_emp;

DESCRIBE dept_manager;

DESCRIBE employees;

DESCRIBE salaries;

DESCRIBE titles;

USE codeup_test_db;

ALTER TABLE albums ADD UNIQUE unique_artist_and_name (artist, name);

SELECT * FROM albums;

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Michael Jackson', 'Thriller', 1982,'Pop, post-disco, funk, rock', 48.9);