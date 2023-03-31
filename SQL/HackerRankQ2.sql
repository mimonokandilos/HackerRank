--              QUESTION #2
-- START HackerRankQ2.sql -> 3 parts(Create, Testing, HackerRankSoln)




-- PART I : START Create
-- ** run entire script
DROP DATABASE HackerRank; 

CREATE DATABASE IF NOT EXISTS HackerRank;

CREATE TABLE HackerRank.price_today (
    stock_code VARCHAR(200) NOT NULL PRIMARY KEY,
    price INT NOT NULL
);
CREATE TABLE HackerRank.price_tomorrow (
    stock_code VARCHAR(200) NOT NULL PRIMARY KEY,
    price INT NOT NULL
);

INSERT INTO HackerRank.price_today (stock_code, price) VALUES 
    ('Titan', 560),
    ('MRF', 950),
    ('GOOGL', 200);

INSERT INTO HackerRank.price_tomorrow (stock_code, price) VALUES 
    ('Titan', 750),
    ('MRF', 800),
    ('GOOGL', 210);
-- EndOF : PART I : Create





-- PART II: START Testing
USE HackerRank;
SHOW TABLES;
SELECT * FROM price_today;
SELECT * FROM price_tomorrow;
-- EndOF : PART II : Testing




-- PART III : START HackerRankSolution
USE HackerRank;

SELECT today.stock_code
FROM price_today today
INNER JOIN price_tomorrow tomorrow ON today.stock_code = tomorrow.stock_code
WHERE tomorrow.price > today.price
ORDER BY today.stock_code ASC;
-- EndOF : PART III : START HackerRankSolution




-- EOF HackerRankQ1.sql