-- Create the relevant tables in the DB --

CREATE TABLE store (
	id VARCHAR(5) PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);

CREATE TABLE item_category (
	id INT IDENTITY PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);

CREATE TABLE status (
	id INT IDENTITY PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);

CREATE TABLE item (
	upc VARCHAR(20) PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	description VARCHAR(2048) NOT NULL,
	category_id INT NOT NULL,
	size VARCHAR(55) NOT NULL,
	img_url VARCHAR(1024)
);

CREATE TABLE store_item_action (
	action_id INT IDENTITY PRIMARY KEY,
	store_item_id INT NOT NULL,
	user_id VARCHAR(20) NOT NULL,
	status_id INT NOT NULL,
	expired_count INT NOT NULL,
	created_date DATETIME NOT NULL
);

CREATE TABLE store_item (
	id INT IDENTITY PRIMARY KEY,
	item_upc VARCHAR(20) NOT NULL,
	store_id VARCHAR(5) NOT NULL,
	expiry_date DATE NOT NULL,
	created_date DATE NOT NULL,
	updated_date DATE
);