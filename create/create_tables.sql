-- Create the relevant tables in the DB --

CREATE TABLE store (
	store_id INT PRIMARY KEY,
	store_name VARCHAR(100)
);

CREATE TABLE item_category (
	item_category_id INT IDENTITY PRIMARY KEY,
	item_category_name VARCHAR(100)
);

CREATE TABLE status (
	status_id INT IDENTITY PRIMARY KEY,
	status_name VARCHAR(100)
);

CREATE TABLE item (
	item_upc VARCHAR(20) PRIMARY KEY,
	item_name VARCHAR(100),
	item_description VARCHAR(2048),
	item_expiry DATE,
	item_category_id INT,
	item_size VARCHAR(55),
	item_img_url VARCHAR(1024)
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
	store_item_id INT IDENTITY PRIMARY KEY,
	item_upc VARCHAR(20),
	store_id INT
);