USE codeup_test_db;

# The name of all albums by Pink Floyd.
SELECT 'The name of all albums by Pink Floyd.' AS '';
SELECT name
FROM albums
WHERE artist = 'Pink Floyd';

# The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS '';
SELECT release_date
FROM albums
WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

# The genre for Nevermind
SELECT 'The genre for Nevermind' AS '';
SELECT genre
FROM albums
WHERE name = 'Nevermind';

# Which albums were released in the 1990s
SELECT 'Which albums were released in the 1990s' AS '';
SELECT name
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

# Which albums had less than 20 million certified sales
SELECT 'Which albums had less than 20 million certified sales' AS '';
SELECT name
FROM albums
WHERE sales < 20;

# All the albums with a genre of "Rock".
SELECT 'All the albums with a genre of "Rock".' AS '';
SELECT name, genre
FROM albums
WHERE genre LIKE '%Rock%';  -- '%Rock' -> ends with, 'Rock%' -> starts with '%Rock%' contains
