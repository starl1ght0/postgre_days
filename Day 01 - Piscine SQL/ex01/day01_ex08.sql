SELECT
    order_date,
    CONCAT(name, ' (age:', age, ')') AS person_information
FROM
    person_order NATURAL JOIN (
    SELECT id AS person_id, name, age
 FROM person
  )
 AS id
 ORDER BY
 order_date ASC,
 person_information ASC;