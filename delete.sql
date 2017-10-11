-- ALWAYS SELECT THE RECORDS YOU WANT TO MODIFY OR DELETE FIRST JUST TO MAKE SURE THEY ARE THE RIGHT ONES.

-- Find out the id of the album of Nirvana
SELECT id FROM albums WHERE artist = 'Nirvana';

-- Deletes the album of Nirvana by it's id
DELETE FROM albums WHERE id = 28;

-- Truncate deletes all the records and resets the id count back to 0.
TRUNCATE albums;