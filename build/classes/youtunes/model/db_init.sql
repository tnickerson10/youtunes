

-- drop test user if exists 
DROP USER IF EXISTS 'youtunes_user'@'localhost';


-- create youtunes_user and grant them all privileges to the youtunes database 
CREATE USER 'youtunes_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';


-- grant all privileges to the youtunes database to user youtunes_user on localhost 
GRANT ALL PRIVILEGES ON youtunes.* TO'youtunes_user'@'localhost';


-- Drop the foreign key
ALTER TABLE album DROP FOREIGN KEY fk_artist;


-- drop tables if they are present
DROP TABLE IF EXISTS artist; 
DROP TABLE IF EXISTS album; 


-- create artist table 
CREATE TABLE artist (
	artist_id 		INT 			NOT NULL		AUTO_INCREMENT,
	first_name		VARCHAR(75)		NOT NULL,
	last_name		VARCHAR(75)		NOT NULL,
	PRIMARY KEY(artist_id)
);

-- create album table 
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


-- insert artist statements 
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
	
	
-- insert album statements
INSERT INTO album(title, price, genre, img_url, artist_id)
	VALUES('Chris Stapleton: Traveller', 19.99, 'Country', 'stapleton.jpeg', (SELECT artist_id FROM artist WHERE last_name = 'Stapleton'));
	
INSERT INTO album(title, price, genre, img_url, artist_id)
	VALUES('Kid Cudi: Man On The Moon: The End Of The Day', 14.59, 'Rap', 'cudi.jpeg', (SELECT artist_id FROM artist WHERE last_name = 'Cudi'));
	
INSERT INTO album(title, price, genre, img_url, artist_id)
	VALUES('Kayne West: Donda', 29.18, 'Rap', 'west.jpeg', (SELECT artist_id FROM artist WHERE last_name = 'West'));
	
INSERT INTO album(title, price, genre, img_url, artist_id)
	VALUES('Fleetwood Mac: The White Album', 29.90, 'Rock', 'mac.jpeg', (SELECT artist_id FROM artist WHERE last_name = 'Mac'));
	
INSERT INTO album(title, price, genre, img_url, artist_id)
	VALUES('Pearl Jam: Ten', 10.89, 'Rock', 'jam.jpeg', (SELECT artist_id FROM artist WHERE last_name = 'Jam'));
	
INSERT INTO album(title, price, genre, img_url, artist_id)
	VALUES('Notorious  B.I.G.: Greatest Hits', 16.89, 'Rap', 'biggie.jpeg', (SELECT artist_id FROM artist WHERE last_name = 'B.I.G.'));
	