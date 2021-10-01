USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       artist VARCHAR(50) NOT NULL,
                       name VARCHAR(85) NOT NULL,
                       address VARCHAR(200) NOT NULL,
                       release_date DATE NOT NULL,
                       sales DOUBLE NOT NULL DEFAULT 0,
                       genre VARCHAR(25) NOT NULL,
                       PRIMARY KEY (id)
);