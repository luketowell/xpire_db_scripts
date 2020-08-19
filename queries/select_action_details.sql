-- select item_action details by username. --

SELECT a.user_id, b.status_name, a.expired_count, a.update_date FROM
store_item_action a
INNER JOIN status b
on a.status_id=b.status_id 
WHERE user_id = 'lmt0013';


-- select item_action details using storename and categoryId --

SELECT si.id, si.item_upc, si.store_id, i.name, i.category_id, i.img_url 
FROM store_item si
INNER JOIN item i 
ON si.item_upc = i.upc 
WHERE i.category_id = 1 AND si.store_id ='4128'