USE codeup_test_db;

SELECT 'Albums by Pink Floyd';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'Release Date for Sgt. Pepper\'s Lonely Hearts Club Band';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper\'s Lonely Hearts Club Band';

SELECT 'Genre of Nevermind';
SELECT genre FROM albums WHERE name = 'Nevermind';

# Both lines below will accomplish the same thing. Standard practice?

SELECT 'All albums from the 1990s';
#SELECT * FROM albums WHERE release_date > 1990 && albums.release_date < 2000;
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Albums that sold less than 20 Million';
SELECT * FROM albums WHERE sales < 20;

SELECT 'Albums with the genre of \'Rock\'';
SELECT * FROM albums WHERE genre = 'Rock';