/*Comentarios en SQL*/
/*mexflix_schema.sql*/

/*DROP DATABASE IF EXISTS mexflix30;*/

CREATE DATABASE IF NOT EXISTS mexflix30;

USE mexflix30;

CREATE TABLE status(
	status_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	status VARCHAR(20) NOT NULL
);

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
	FULLTEXT KEY search(title, genres, author, actors),
	FOREIGN KEY (status) REFERENCES status(status_id) 
		ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE users(
	user VARCHAR(15) PRIMARY KEY,
	email VARCHAR(80) UNIQUE NOT NULL,
	name VARCHAR(100) NOT NULL,
	birthday DATE NOT NULL,
	pass CHAR(32) NOT NULL,
	role ENUM('Admin', 'User') NOT NULL
);