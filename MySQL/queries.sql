/* Queries CRUD */

INSERT INTO movieseries 
	SET imdb_id = 'tt3749900', title = 'Gotham', genres = 'Crime, Drama, Thriller', premiere = '2014', status = 3, category = 'Serie';

SELECT * FROM movieseries WHERE title = 'Gotham';

SELECT imdb_id, title, premiere, category FROM movieseries WHERE title = 'Gotham';

SELECT COUNT(*) FROM movieseries;

UPDATE movieseries 
	SET author = 'Bruno Heller', actors = 'Ben McKenzie, Donal Logue, David Mazouz, Sean Pertwee', country = 'USA', rating = 8.0, poster = 'http://ia.media-imdb.com/images/M/MV5BMTQ1ODk3NDczNF5BMl5BanBnXkFtZTgwODE5MDQ4NjE@._V1_SX300.jpg', plot = 'In crime ridden Gotham City, Thomas and Martha Wayne are murdered before young Bruce Wayne\'s eyes. Although the idealistic Gotham City Police Dept. detective James Gordon, and his cynical partner, Harvey Bullock, seem to solve the case quickly, things are not so simple. Inspired by Bruce\'s traumatized desire for justice, Gordon vows to find it amid Gotham\'s corruption. Thus begins Gordon\'s lonely quest that would set him against his own comrades and the underworld with their own deadly rivalries and mysteries. In the coming wars, innocence will be lost and compromises will be made as some criminals will fall as casualties while others will rise as supervillains. All the while, young Bruce observes this war with a growing obsession that would one day drive him to seek his own revenge as The Batman.'
	WHERE imdb_id = 'tt3749900';

UPDATE movieseries SET author = 'Bob Kane' WHERE imdb_id = 'tt3749900';

DELETE FROM movieseries WHERE imdb_id = 'tt3749900';

SELECT * FROM movieseries WHERE category = 'Serie';

SELECT * FROM movieseries WHERE category = 'Movie';

SELECT title, category, country, genres, premiere, status FROM movieseries WHERE category = 'Serie';

SELECT title, category, country, genres, premiere, status FROM movieseries WHERE category = 'Serie' ORDER BY premiere;

SELECT title, category, country, genres, premiere, status FROM movieseries WHERE category = 'Serie' ORDER BY premiere DESC;

SELECT title, category, country, genres, premiere, status FROM movieseries WHERE category = 'Movie' AND country = 'USA' ORDER BY premiere;

SELECT title, category, country, genres, premiere, status FROM movieseries WHERE category = 'Movie' AND country LIKE '%USA' ORDER BY premiere;

SELECT title, category, country, genres, premiere, status FROM movieseries WHERE category = 'Movie' AND country LIKE 'USA%' ORDER BY premiere;

SELECT title, category, country, genres, premiere, status FROM movieseries WHERE category = 'Movie' AND country LIKE '%USA%' ORDER BY premiere;

/* CONSULTAS MÚLTIPLES */
SELECT * FROM movieseries AS ms
	INNER JOIN status AS s;

SELECT ms.title, s.status FROM movieseries AS ms
	INNER JOIN status AS s
	ON ms.status = s.status_id;

SELECT ms.title/*, ms.category*/, ms.country, ms.genres, ms.premiere, s.status
	FROM movieseries AS ms 
	INNER JOIN status AS s 
	ON ms.status = s.status_id
	ORDER BY ms.premiere DESC;

SELECT ms.title, ms.country, ms.genres, ms.premiere, s.status
	FROM movieseries AS ms 
	INNER JOIN status AS s 
	ON ms.status = s.status_id
	WHERE s.status = 'Canceled'
	ORDER BY ms.premiere DESC;

SELECT ms.title, ms.country, ms.genres, ms.premiere, s.status
	FROM movieseries AS ms 
	INNER JOIN status AS s 
	ON ms.status = s.status_id
	WHERE (s.status = 'canceled' OR s.status = 'coming Soon')
	 AND country != 'USA'
	ORDER BY ms.premiere DESC;

SELECT ms.title, ms.country, ms.genres, ms.premiere, s.status
	FROM movieseries AS ms 
	INNER JOIN status AS s 
	ON ms.status = s.status_id
	WHERE ms.genres LIKE '%Sport%'
	ORDER BY ms.premiere DESC;

/*  Consulta FullText Key */
SELECT * FROM movieseries
	WHERE MATCH(title, author, actors, genres)
	AGAINST('stallone' IN BOOLEAN MODE);

SELECT title, actors, author FROM movieseries
	WHERE MATCH(title, author, actors, genres)
	AGAINST('stallone' IN BOOLEAN MODE);

SELECT title, category, genres FROM movieseries
	WHERE MATCH(title, author, actors, genres)
	AGAINST('drama' IN BOOLEAN MODE);

SELECT ms.title, ms.category, ms.genres, s.status 
	FROM movieseries AS ms
	INNER JOIN status AS s
	ON ms.status = s.status_id
	WHERE MATCH(ms.title, ms.author, ms.actors, ms.genres)
	AGAINST('drama' IN BOOLEAN MODE);

DELETE FROM status WHERE status_id = 5;