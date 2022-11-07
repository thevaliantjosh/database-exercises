USE codeup_test_db;

/*The name of all albums by Pink Floyd.
The year Sgt. Pepper's Lonely Hearts Club Band was released
The genre for Nevermind
Which albums were released in the 1990s
Which albums had less than 20 million certified sales
All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?*/


SELECT artist, album_name AS 'The name of all albums by Pink Floyd' FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date AS 'The year Sgt.Pepper''s Lonely Hearts Club Band was Released' FROM albums WHERE album_name = 'Sgt.Pepper''s Lonely Hearts Club Band';

SELECT artist, album_name, release_date AS '90''s Albums', sales, genre FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT artist, album_name, release_date, sales AS '< 20 million', genre FROM albums WHERE sales < 20;

SELECT * FROM albums WHERE genre LIKE '%Rock';

