--              QUESTION #1
USE HackerRank;


SELECT e.employee_ID, e.name
FROM employee_information e
INNER JOIN last_quarter_bonus b ON e.employee_ID = b.employee_ID
WHERE e.division = 'HR' AND b.bonus >= 5000;


--              QUESTION #2
USE HackerRank;


SELECT today.stock_code
FROM price_today today
INNER JOIN price_tomorrow tomorrow ON today.stock_code = tomorrow.stock_code
WHERE tomorrow.price > today.price
ORDER BY today.stock_code ASC;