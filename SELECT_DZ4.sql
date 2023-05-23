SELECT count, genre.name FROM (SELECT COUNT(musician_id), genre_id FROM musiciangenre GROUP BY genre_id) AS T
LEFT JOIN genre ON T.genre_id = genre.genre_id;

SELECT count, album.title, album.year FROM (SELECT COUNT(track_id), album_id FROM track GROUP BY album_id) AS T
LEFT JOIN album ON T.album_id = album.album_id 
WHERE year >= 2019 AND year <= 2020;

SELECT round, album.title, album.year FROM (SELECT ROUND(AVG(duration),0), album_id FROM track GROUP BY album_id) AS T
LEFT JOIN album ON T.album_id = album.album_id;

SELECT nickname FROM musician M LEFT JOIN musicianalbum MA ON M.musician_id = MA.musician_id
LEFT JOIN album A ON MA.album_id = A.album_id 
WHERE year != 2020 GROUP BY nickname;

SELECT c.name FROM collection C LEFT JOIN trackcollection t ON C.collection_id = t.collection_id 
LEFT JOIN track t2 ON t.track_id = t2.track_id 
LEFT JOIN album a ON t2.album_id = a.album_id 
LEFT JOIN musicianalbum m ON a.album_id = m.album_id 
LEFT JOIN musician m2 ON m.musician_id = m2.musician_id
WHERE m2.nickname LIKE 'Баста' 
GROUP BY c.name;

SELECT title FROM album a LEFT JOIN musicianalbum m ON a.album_id = m.album_id 
LEFT JOIN musician m2 ON m.musician_id = m2.musician_id 
LEFT JOIN musiciangenre m3 ON m2.musician_id = m3.musician_id 
LEFT JOIN genre g ON m3.genre_id =g.genre_id
GROUP BY title 
HAVING  COUNT (DISTINCT name) > 1;

SELECT t_name, name FROM track t LEFT JOIN trackcollection t2 ON t.track_id = t2.track_id 
LEFT JOIN collection c ON t2.collection_id = c.collection_id
WHERE name IS NULL;

SELECT nickname, duration FROM musician m LEFT JOIN musicianalbum m2 ON m.musician_id = m2.musician_id
LEFT JOIN album a ON m2.album_id = a.album_id 
LEFT JOIN track t ON a.album_id = t.album_id
WHERE duration = (SELECT MIN(duration) FROM track)
GROUP BY nickname, duration;

SELECT count, album.title FROM (SELECT COUNT(track_id), album_id FROM track GROUP BY album_id) AS T
LEFT JOIN album ON T.album_id = album.album_id
WHERE count = (SELECT COUNT(track_id) FROM track GROUP BY album_id ORDER BY count LIMIT 1);
