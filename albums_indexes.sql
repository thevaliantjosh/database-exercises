USE codeup_test_db;

SHOW INDEXES FROM albums;

DESCRIBE albums;



SELECT * FROM albums;

INSERT INTO albums (artist, album_name, release_date, sales, genre) VALUES ('AC/DC', 'Back in Black', 1980, 30.1, 'Hard Rock');

DELETE FROM albums WHERE id = 26;

ALTER TABLE albums ADD UNIQUE unique_artist_name (artist, album_name);

# ALTER TABLE albums RENAME COLUMN artist TO artist_name



