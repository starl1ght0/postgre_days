SELECT person_id, order_date AS action_date
FROM person_order

INTERSECT

SELECT person_id, visit_date AS action_date
FROM person_visits

ORDER BY action_date ASC, person_id DESC;