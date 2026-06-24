CREATE TABLE Customers(
	customer_id INT PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(100) UNIQUE,
	country VARCHAR(50)
);

CREATE TABLE Albums(
	album_id INT PRIMARY KEY,
	title VARCHAR(100),
	price DECIMAL(5,2)
);

CREATE TABLE Tracks(
	track_id INT PRIMARY KEY,
	namee VARCHAR(100),
	album_id INT,
	media_type VARCHAR(50),
	milliseconds INT,
	FOREIGN KEY (album_id) REFERENCES Albums(album_id)
);