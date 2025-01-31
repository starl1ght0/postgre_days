SELECT
    p.id AS person_id,
    p.name AS person_name,
    p.age,
    p.gender,
    p.address,
    pi.id AS pizzeria_id,
    pi.name AS pizzeria_name,
    pi.rating
FROM
    person p
CROSS JOIN
    pizzeria pi
ORDER BY
    p.id,
    pi.id;