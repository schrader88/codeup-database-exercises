USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       artist VARCHAR(128) NOT NULL,
                       name VARCHAR(128) NOT NULL,
                       address VARCHAR(200) NOT NULL,
                       release_date SMALLINT UNSIGNED NOT NULL,
                       sales FLOAT(6, 2) NOT NULL,
                       genre VARCHAR(25) NOT NULL,
                       PRIMARY KEY (id)
);