/* Listado de Operaciones (queries) CRUD de mexflix */

/*movieseries*/
	/*Crear movieseries*/
	INSERT INTO movieseries SET imdb_id = 'tt3749900', title = 'Gotam', plot = '', author = '', actors = '', country = '', premiere = '2014', trailer = '', poster = '', rating = 8.0, genres = 'Crime, Drama, Thriller', category = 'Serie', status  = 3;

	REPLACE INTO movieseries SET imdb_id = 'tt3749900', title = 'Gotam', plot = '', author = '', actors = '', country = '', premiere = '2014', trailer = '', poster = '', rating = 8.0, genres = 'Crime, Drama, Thriller', category = 'Serie', status  = 3;

	/*Actualizar movieseries*/
	UPDATE movieseries SET title = 'Gotham', plot = 'In crime ridden Gotham City, Thomas and Martha Wayne are murdered before young Bruce Wayne\'s eyes. Although the idealistic Gotham City Police Dept. detective James Gordon, and his cynical partner, Harvey Bullock, seem to solve the case quickly, things are not so simple. Inspired by Bruce\'s traumatized desire for justice, Gordon vows to find it amid Gotham\'s corruption. Thus begins Gordon\'s lonely quest that would set him against his own comrades and the underworld with their own deadly rivalries and mysteries. In the coming wars, innocence will be lost and compromises will be made as some criminals will fall as casualties while others will rise as supervillains. All the while, young Bruce observes this war with a growing obsession that would one day drive him to seek his own revenge as The Batman.', genres = 'Crime, Drama, Thriller', author = 'Bruno Heller', actors = 'Zabryna Guevara, Ben McKenzie, Donal Logue, David Mazouz', country = 'USA', premiere = '2014', trailer = 'https://www.youtube.com/watch?v=_axxvmMBgQk', poster = 'http://ia.media-imdb.com/images/M/MV5BMTQ1ODk3NDczNF5BMl5BanBnXkFtZTgwODE5MDQ4NjE@._V1_SX300.jpg', rating = 8.0, category = 'Serie', status  = 3 
		WHERE imdb_id = 'tt3749900';

	REPLACE movieseries SET imdb_id = 'tt3749900', title = 'Gotham', plot = 'In crime ridden Gotham City, Thomas and Martha Wayne are murdered before young Bruce Wayne\'s eyes. Although the idealistic Gotham City Police Dept. detective James Gordon, and his cynical partner, Harvey Bullock, seem to solve the case quickly, things are not so simple. Inspired by Bruce\'s traumatized desire for justice, Gordon vows to find it amid Gotham\'s corruption. Thus begins Gordon\'s lonely quest that would set him against his own comrades and the underworld with their own deadly rivalries and mysteries. In the coming wars, innocence will be lost and compromises will be made as some criminals will fall as casualties while others will rise as supervillains. All the while, young Bruce observes this war with a growing obsession that would one day drive him to seek his own revenge as The Batman.', genres = 'Crime, Drama, Thriller', author = 'Bruno Heller', actors = 'Zabryna Guevara, Ben McKenzie, Donal Logue, David Mazouz', country = 'USA', premiere = '2014', trailer = 'https://www.youtube.com/watch?v=_axxvmMBgQk', poster = 'http://ia.media-imdb.com/images/M/MV5BMTQ1ODk3NDczNF5BMl5BanBnXkFtZTgwODE5MDQ4NjE@._V1_SX300.jpg', rating = 8.0, category = 'Serie', status  = 3;

	/*Eliminar movieseries*/
	DELETE FROM movieseries WHERE imdb_id = 'tt3749900';

	/*Buscar Todas las movieseries*/
	SELECT ms.imdb_id, ms.title, ms.plot, ms.author, ms.actors, ms.country, ms.premiere, ms.trailer, ms.poster, ms.rating, ms.genres, ms.category, s.status
		FROM movieseries AS ms
		INNER JOIN status AS s
		ON ms.status = s.status_id;
	
	/*Buscar una movieseries por titulo, persona, géneros*/
	SELECT ms.imdb_id, ms.title, ms.plot, ms.author, ms.actors, ms.country, ms.premiere, ms.trailer, ms.poster, ms.rating, ms.genres, ms.category, s.status
		FROM movieseries AS ms
		INNER JOIN status AS s
		ON ms.status = s.status_id;
		WHERE MATCH(ms.title, ms.author, ms.actors, ms.genres)
		AGAINST('drama' IN BOOLEAN MODE);
	 
	/*Buscar una movieseries por categoria*/
	SELECT ms.imdb_id, ms.title, ms.plot, ms.author, ms.actors, ms.country, ms.premiere, ms.trailer, ms.poster, ms.rating, ms.genres, ms.category, s.status
		FROM movieseries AS ms
		INNER JOIN status AS s
		ON ms.status = s.status_id
		WHERE ms.category = 'Movie';

	/*Buscar una movieseries por status*/
	SELECT ms.imdb_id, ms.title, ms.plot, ms.author, ms.actors, ms.country, ms.premiere, ms.trailer, ms.poster, ms.rating, ms.genres, ms.category, s.status
		FROM movieseries AS ms
		INNER JOIN status AS s
		ON ms.status = s.status_id
		WHERE ms.status = 1;

/*status*/
	/*Crear status*/
	INSERT INTO status SET status_id = 0, status = 'Otro Status';
	
	/*Actualizar status*/
	UPDATE status SET status = 'Other Status' WHERE status_id = 7;

	/*Salvar (Insert/Update)*/
	REPLACE INTO status (status_id, status) VALUES (0, 'Otro Status');
	REPLACE status SET status_id = 0, status = 'Otro Status';
	
	/*Eliminar status*/
	DELETE FROM status WHERE status_id = 7;

	/*Buscar Todos los status*/
	SELECT * FROM status;

	/*Buscar Un status por status_id*/
	SELECT * FROM status WHERE status_id = 7;	

/*users*/
	/*Crear users*/
	INSERT INTO users SET user = '@usuario', email = 'usuario@midominio.com', name = 'Soy un Usuario', birthday = '1988-09-08', pass = MD5('un_password'), role = 'Admin';
	/*REPLACE INTO users SET user = '@usuario', email = 'usuario@midominio.com', name = 'Soy un Usuario', birthday = '1988-09-08', pass = MD5('un_password'), role = 'Admin';*/

	/*Actualizar*/
		/*datos del users*/
		UPDATE users SET name = 'Soy un Usuario', birthday = '1988-09-08', role = 'User' 
			WHERE user = '@usuario' AND email = 'usuario@midominio.com';
		
		/*REPLACE users SET user = '@usuario', name = 'Soy un Usuario', birthday = '1984-10-08', role = 'User';
		REPLACE users SET user = '@usuario', email = 'usuario@midominio.com', name = 'Soy un Usuario', birthday = '1984-10-08', role = 'User';*/
		
		/*password*/
		UPDATE users SET pass = MD5('un_nuevo_password')
			WHERE user = '@usuario' AND email = 'usuario@midominio.com';
	
	/*Eliminar users*/
		DELETE FROM users WHERE user = '@usuario' AND email = 'usuario@midominio.com';

	/*Buscar Todos los users*/
		SELECT * FROM users;

	/*Buscar Un users por:*/
		/*user*/
		SELECT * FROM users WHERE user = '@usuario';
		/*email*/
		SELECT * FROM users WHERE email = 'usuario@midominio.com';
		/*role*/
		SELECT * FROM users WHERE role = 'Admin';