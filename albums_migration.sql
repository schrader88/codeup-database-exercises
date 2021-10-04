USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(128) NOT NULL,
                        name VARCHAR(128) NOT NULL,
                        release_date SMALLINT UNSIGNED NOT NULL,
                        genre VARCHAR(100) NOT NULL,
                        sales FLOAT(6, 2) NOT NULL,
                        PRIMARY KEY (id)
);
