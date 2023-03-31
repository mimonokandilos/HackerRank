-- DB SCRIPT -> (I) DB : HackerRank
-- RUN ENTIRE SCRIPT~ Q1(test) only then Q2(and test)


--              QUESTION #1
DROP DATABASE HackerRank; 

CREATE DATABASE IF NOT EXISTS HackerRank;

CREATE TABLE HackerRank.employee_information (
    employee_ID INT NOT NULL PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    division VARCHAR(200) NOT NULL
);
CREATE TABLE HackerRank.last_quarter_bonus (
    employee_ID INT NOT NULL PRIMARY KEY,
    bonus INT NOT NULL
);

INSERT INTO HackerRank.employee_information (employee_ID, name, division) VALUES 
    (1, 'Julia', 'HR'),
    (2, 'Samantha', 'Tech'),
    (3, 'Richard', 'HR');

INSERT INTO HackerRank.last_quarter_bonus (employee_ID, bonus) VALUES 
    (1, 2000),
    (2, 5500),
    (3, 6240);






--              QUESTION #2


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

