--              QUESTION #1
-- START HackerRankQ1.sql -> 3 parts(Create, Testing, HackerRankSoln)




-- PART I : START Create
-- ** run entire script
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
-- EndOF : PART I : Create




-- PART II: START Testing
USE HackerRank;
SHOW TABLES;
SELECT * FROM employee_information;
SELECT * FROM last_quarter_bonus;
-- EndOF : PART II : Testing




-- PART III : START HackerRankSolution
USE HackerRank;

SELECT e.employee_ID, e.name
FROM employee_information e
INNER JOIN last_quarter_bonus b ON e.employee_ID = b.employee_ID
WHERE e.division = 'HR' AND b.bonus >= 5000;
-- EndOF : PART III : START HackerRankSolution




-- EOF HackerRankQ1.sql