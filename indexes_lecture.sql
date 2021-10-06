USE employees;

SELECT COUNT(*) FROM titles;

SHOW INDEXES FROM departments;

SELECT salary FROM salaries
WHERE salary < 70000 AND salary > 50000;

ALTER TABLE salaries ADD INDEX salary_index (salary);

########################################################

USE codeup_test_db;

CREATE TABLE different_quotes (
                                  id INT NOT NULL AUTO_INCREMENT,
                                  content VARCHAR(240) NOT NULL,
                                  author VARCHAR(50) NOT NULL,
                                  PRIMARY KEY(id)
);

INSERT INTO different_quotes (content, author)
VALUES ('This is my quote!', 'Kyle Schrader');

INSERT INTO different_quotes (content, author)
VALUES ('The real voyage of discovery consists not in seeking new landscapes, but in having new eyes.', 'Marcel Proust');

SELECT * FROM different_quotes;

ALTER TABLE different_quotes ADD UNIQUE (content);

# Both queries below will produce an error. This is because the above query does not allow duplicate content.

INSERT INTO different_quotes (content, author)
VALUES ('The real voyage of discovery consists not in seeking new landscapes, but in having new eyes.', 'Marcel Proust');

INSERT INTO different_quotes (content, author)
VALUES ('This is my quote!', 'Kyle Schrader');

SHOW INDEXES FROM different_quotes;

########################################################

USE employees;

SHOW INDEXES FROM salaries;

# Below query is how to DROP an index that is not the PRIMARY

DROP INDEX salary_index ON salaries;