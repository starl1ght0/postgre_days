SELECT
  person.name AS person_name,
  menu.pizza_name,
  pizzeria.name AS pizzeria_name
FROM
  person
  JOIN person_order ON person.id = person_order.person_id
  JOIN menu ON person_order.menu_id = menu.id
  JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
ORDER BY
  person_name ASC,
  menu.pizza_name ASC,
  pizzeria_name ASC;