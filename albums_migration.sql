USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(150) NOT NULL,
    name VARCHAR(150) NOT NULL,
    release_date int(4),
    sales FLOAT,
    genre VARCHAR(150),
    PRIMARY KEY (id)
);
