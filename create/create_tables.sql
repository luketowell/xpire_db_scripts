-- Create the relevant tables in the DB --

CREATE TABLE store (
	id VARCHAR(5) PRIMARY KEY,
	name VARCHAR(100)
);

CREATE TABLE item_category (
	id INT IDENTITY PRIMARY KEY,
	name VARCHAR(100)
);

CREATE TABLE status (
	id INT IDENTITY PRIMARY KEY,
	name VARCHAR(100)
);

CREATE TABLE item (
	upc VARCHAR(20) PRIMARY KEY,
	name VARCHAR(100),
	description VARCHAR(2048),
	expiry DATE,
	category_id INT,
	size VARCHAR(55),
	img_url VARCHAR(1024)
);

CREATE TABLE store_item_action (
	action_id INT IDENTITY PRIMARY KEY,
	store_item_id INT,
	user_id VARCHAR(20),
	status_id INT,
	expired_count INT,
	update_date DATETIME
);

CREATE TABLE store_item (
	id INT IDENTITY PRIMARY KEY,
	item_upc VARCHAR(20),
	store_id VARCHAR(5)
);