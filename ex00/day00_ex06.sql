SELECT 
  name, 
  CASE WHEN EXISTS (
    SELECT 
      1 
    FROM 
      person_order 
    WHERE 
      person_order.person_id = person.id 
      AND menu_id IN (13, 14, 18) 
      AND order_date = '2022-01-07'
  ) THEN 'Has Order' ELSE 'No Order' END AS check_name 
FROM 
  person
