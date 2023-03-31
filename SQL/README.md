# (I) LOGIN INTO MYSQL(HOW TO)
### * must have mysql installed first(if not go to LAST section)
Login Workflow:

- open terminal
- type "mysql -u root -p" 
    - enter root password
- Start DB Initalziation and Testing


# (II) PROBLEM & SOLUTION DESCRIPTION
### 1.  Create SQL Relations == createEnvironment.sql
-           (I) DB : HackerRank
-              QUESTION #1
-                          (1) TABLE : price_today
-                              a. stock_code : VARCHAR(200) : Primary Key
-                                  - stock code
-                              b. price : INT
-                                  - shows price of today
-                          (2) TABLE : price_tomorrow
-                              a. stock_code : VARCHAR(200) : Primary Key
-                                  - stock code
-                              b. price : INT
-                                  - shows price of tomorrow
-              QUESTION #2
-                          (1) TABLE : price_today
-                              a. stock_code : VARCHAR(200) : Primary Key
-                                  - stock code
-                              b. price : INT
-                                  - shows price of today
-                          (2) TABLE : price_tomorrow
-                              a. stock_code : VARCHAR(200) : Primary Key
-                                  - stock code
-                              b. price : INT
-                                  - shows price of tomorrow
### 2. Test SQL Relations == testEnvironment.sql + solnHackerRank.sql


# (II) MYSQL SERVER INSTALLATION

### for Ubunntu/fedora/
- dnf install mysql
- yum install mysql
- apt install mysql

- mysql_sercure_installation
    - set root password, plus securly install mysql

Check Mysql status
- systemctl status mysql(d)

Restart mysql
- systemctl restart mysql(d)

Start myql
- systemctl start mysql(d)


### for Mac
- brew install mysql

- mysql_sercure_installation
   - set root password, plus securly install mysql

Check Mysql status
- mysql.server status

Restart mysql
- mysql.server restart

Start myql
- mysql.server start

