-- Drop Foreign Key for the store_item_action table to the status table --
ALTER TABLE store_item_action
DROP CONSTRAINT  FK_item_action_status;

-- Drop Foreign Key for the item table to the item_category table --
ALTER TABLE item
DROP CONSTRAINT FK_item_category;

-- Drop Foreign Key for the store_item table to the item table --
ALTER TABLE store_item
DROP CONSTRAINT FK_store_item_upc;

-- Drop Foreign Key for the store_item table to the store table --
ALTER TABLE store_item
DROP CONSTRAINT FK_store_item_store_id;

-- Drop Foreign Key for the store_item table to the action table --
ALTER TABLE store_item
DROP CONSTRAINT FK_store_item_action;
