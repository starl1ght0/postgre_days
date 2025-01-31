SELECT
    p.name,
    po.order_date AS action_date
FROM
    person p
JOIN
    person_order po ON p.id = po.id
UNION ALL
SELECT
    p.name,
    pv.visit_date AS action_date
FROM
    person p
JOIN
    person_visits pv ON p.id = pv.id
ORDER BY
    action_date ASC,
    name DESC;