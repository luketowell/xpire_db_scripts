-- Create Foreign Keys -- 

-- Add Foreign Key for the store_item_action table to the status table --
ALTER TABLE store_item_action
ADD CONSTRAINT  FK_item_action_status
FOREIGN KEY (status_id) REFERENCES status(status_id);

-- Add Foreign Key for the item table to the item_category table --
ALTER TABLE item
ADD CONSTRAINT FK_item_category
FOREIGN KEY (item_category_id) REFERENCES item_category(item_category_id);

-- Add Foreign Key for the store_item table to the item table --
ALTER TABLE store_item
ADD CONSTRAINT FK_store_item_upc
FOREIGN KEY (item_upc) REFERENCES item(item_upc);

-- Add Foreign Key for the store_item table to the store table --
ALTER TABLE store_item
ADD CONSTRAINT FK_store_item_store_id
FOREIGN KEY (store_id) REFERENCES store(store_id);

-- Add Foreign Key for the store_item table to the store_item_action table --
ALTER TABLE store_item_action
ADD CONSTRAINT FK_action_store_item
FOREIGN KEY (store_item_id) REFERENCES store_item(store_item_id);