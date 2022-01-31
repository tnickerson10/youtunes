

-- DROPS USER 
DROP USER IF EXISTS 'youtunes_user'@'localhost';


-- CREATES youtunes_user 
CREATE USER 'youtunes_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';


-- GRANTS ALL PRIVELAGES TO youtunes DATABASE
GRANT ALL PRIVILEGES ON youtunes.* TO'youtunes_user'@'localhost';


-- DROP FK
ALTER TABLE album DROP FOREIGN KEY fk_artist;


-- DROPS TABLES IF THEY EXIST
DROP TABLE IF EXISTS artist; 
DROP TABLE IF EXISTS album; 


-- CREATES ARTIST TABLE 
CREATE TABLE artist (
	artist_id 		INT 			NOT NULL		AUTO_INCREMENT,
	first_name		VARCHAR(75)		NOT NULL,
	last_name		VARCHAR(75)		NOT NULL,
	PRIMARY KEY(artist_id)
);

-- CREATES ALBUM TABLE 
CREATE TABLE album (
	album_id		INT 			NOT NULL 		AUTO_INCREMENT,
	title			VARCHAR(150)	NOT NULL,
	price			DECIMAL(5, 2)	NOT NULL,
	genre			VARCHAR(75)		NOT NULL,
	img_url			VARCHAR(150)	NOT NULL,
	artist_id		INT				NOT NULL,
	PRIMARY KEY(album_id),
	CONSTRAINT fk_artist
	FOREIGN KEY(artist_id)
		REFERENCES artist(artist_id)
); 


-- INSERT ARTIST STATEMENTS
INSERT INTO artist(first_name, last_name)
	VALUES('Chris', 'Stapleton');

INSERT INTO artist(first_name, last_name)
	VALUES('Kid', 'Cudi');
	
INSERT INTO artist(first_name, last_name)
	VALUES('Kanye', 'West');
	
INSERT INTO artist(first_name, last_name)
	VALUES('Fleetwood', 'Mac');
	
INSERT INTO artist(first_name, last_name)
	VALUES('Pearl', 'Jam');

INSERT INTO artist(first_name, last_name)
	VALUES('Notorious', 'B.I.G.');
	
	
-- INSERT ALBUM STATEMENTS
INSERT INTO album(title, price, genre, img_url, artist_id)
	VALUES('Chris Stapleton: Traveller', 19.99, 'Country', 'stapleton.jpeg', (SELECT artist_id FROM artist WHERE last_name = 'Stapleton'));
	
INSERT INTO album(title, price, genre, img_url, artist_id)
	VALUES('Kid Cudi: Man On The Moon: The End Of The Day', 14.59, 'Rap', 'cudi.jpeg', (SELECT artist_id FROM artist WHERE last_name = 'Cudi'));
	
INSERT INTO album(title, price, genre, img_url, artist_id)
	VALUES('Kayne West: Donda', 29.18, 'Rap', 'west.jpeg', (SELECT artist_id FROM artist WHERE last_name = 'West'));
	
INSERT INTO album(title, price, genre, img_url, artist_id)
	VALUES('Fleetwood Mac: The White Album', 29.97, 'Rock', 'mac.jpeg', (SELECT artist_id FROM artist WHERE last_name = 'Mac'));
	
INSERT INTO album(title, price, genre, img_url, artist_id)
	VALUES('Pearl Jam: Ten', 10.89, 'Rock', 'jam.jpeg', (SELECT artist_id FROM artist WHERE last_name = 'Jam'));
	
INSERT INTO album(title, price, genre, img_url, artist_id)
	VALUES('Notorious  B.I.G.: Greatest Hits', 16.89, 'Rap', 'biggie.jpeg', (SELECT artist_id FROM artist WHERE last_name = 'B.I.G.'));
	