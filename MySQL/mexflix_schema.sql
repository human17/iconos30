/*Comentarios en SQL*/
/*mexflix_schema.sql*/

CREATE DATABASE IF NOT EXISTS mexflix;

USE mexflix;

CREATE TABLE movieseries(
	imdb_id CHAR(9) PRIMARY KEY,
	title VARCHAR(80) NOT NULL,
	plot TEXT,
	author VARCHAR(100) DEFAULT 'Pending',
	actors VARCHAR(100) DEFAULT 'Pending',
	country VARCHAR(30) DEFAULT 'Unknown',
	premiere YEAR(4) NOT NULL,
	trailer VARCHAR(150) DEFAULT 'no-trailer.jpg',
	poster VARCHAR(150) DEFAULT 'no-poster.jpg',
	rating DECIMAL(2,1),
	genres VARCHAR(50) NOT NULL,
	category ENUM('Movie','Serie') NOT NULL,
	status INTEGER UNSIGNED NOT NULL,
	FULLTEXT KEY search(title, genres, author, actors)
);

CREATE TABLE status(
	status_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	status VARCHAR(20) NOT NULL
);