USE codeup_test_db;

SELECT 'Albums released after 1991' AS '=========================';
SELECT * FROM albums WHERE release_date > 1991;
SELECT 'Albums with Disco as genre' AS '=========================';
SELECT * FROM albums WHERE genre = 'Disco';
SELECT 'Album(s) by Whitney Houston' AS '=========================';
SELECT * FROM albums WHERE artist = 'Whitney Houston / Various artists';

DELETE FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE genre = 'Disco';
DELETE FROM albums WHERE artist = 'Whitney Houston / Various artists';

SELECT * FROM albums;