-- 1



-- 2
USE HackerRank;


SELECT today.stock_code
FROM price_today today
INNER JOIN price_tomorrow tomorrow ON today.stock_code = tomorrow.stock_code
WHERE tomorrow.price > today.price
ORDER BY today.stock_code ASC;