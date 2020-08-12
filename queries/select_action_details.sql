-- select item_action details by username. --

SELECT a.user_id, b.status_name, a.expired_count, a.update_date FROM
store_item_action a
INNER JOIN status b
on a.status_id=b.status_id 
WHERE user_id = 'lmt0013';