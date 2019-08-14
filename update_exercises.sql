USE codeup_test_db;

SELECT 'Updates starting!' AS 'Info';

SELECT * FROM albums;
UPDATE albums
SET author_first_name = 'Samuel', author_last_name = 'Clemens';
SELECT * FROM albums;


SELECT * FROM albums WHERE release_date = <1980;
UPDATE albums
SET sales = sales * 10
SELECT * FROM albums;


SELECT * FROM albums WHERE author = 'Micheal Jackson';
UPDATE albums
SET artist = 'Micheal Jackson', author_last_name = 'Peter Jackson'
WHERE id = 4;
SELECT * FROM albums;

SELECT 'Updates done!' AS 'Info';
