use employees;

select ('describe employees;');
describe employees;
select ('describe dept_emp;');
describe dept_emp;
select ('describe dept_manager;');
describe dept_manager;
select ('describe salaries;');
describe salaries;
select ('describe titles;');
describe titles;
select ('describe departments;');
describe departments;


use codeup_test_db;

alter table albums
add unique (name, artist);

describe albums;

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Micheal Jackson', 'Thriller', '1982', '47.3', 'Pop, Rock, R&B'), ('AC/DC', 'Back in Black', '1980', '26.1', 'Hard Rock');
