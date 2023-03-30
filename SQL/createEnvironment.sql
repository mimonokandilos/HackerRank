-- DB SCRIPT
-- RUN ENTIRE SCRIPT~
--                      1) DB : HackerRank
--                          1) TABLE : price_today
--                              a. stock_code : VARCHAR(200) : Primary Key
--                                  - stock code
--                              b. price : INT
--                                  - shows price of today
--                          2) TABLE : price_tomorrow
--                              a. stock_code : VARCHAR(200) : Primary Key
--                                  - stock code
--                              b. price : INT
--                                  - shows price of tomorrow


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

