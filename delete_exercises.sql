USE codeup_test_db;

SELECT 'Deletion starting!' AS 'Info';

DELETE FROM albums WHERE release_date > '1991';
DELETE FROM albums WHERE genre = 'Disco';
DELETE FROM albums WHERE artist = 'Whitney Houston';

SELECT 'Deletion done!' AS 'Info';
