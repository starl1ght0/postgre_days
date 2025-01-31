SELECT pizza_name
FROM (
    SELECT pizza_name, ROW_NUMBER() OVER (PARTITION BY pizza_name ORDER BY pizza_name) as rn
    FROM menu
) ranked_pizzas
WHERE rn = 1
ORDER BY pizza_name DESC;