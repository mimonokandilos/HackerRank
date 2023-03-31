# (I) PYTHON
### * must have python installed first(if not go to LAST section)
Login Workflow:

- (1) open terminal
- (2) check if python3 is installed:
    - run : "python3"
    - exit : "CTRL-D"
- (3) GOTO folder with .py file
    - run : 
- Start DB Initalziation and Testing


# (II) PROBLEM & SOLUTION DESCRIPTION
### 1.  Create SQL Relations == createEnvironment.sql
-           (I) DB : HackerRank
               QUESTION #1
                           (1) TABLE : employee_information
                               a. employee_ID : INT : Primary Key
                                   - unique id for each employee
                               b. name : VARCHAR(200)
                                   - shows name attributed to the employee_id
                               c. division : VARCHAR(200)
                                   - shows what division employee is a part of
                           (2) TABLE : last_quarter_bonus
                               a. employee_ID : INT : Primary Key
                                   - unique id for each employee
                               b. bonus : INT
                                   - number value for possible bonus
               QUESTION #2
                           (1) TABLE : price_today
                               a. stock_code : VARCHAR(200) : Primary Key
                                   - stock code
                               b. price : INT
                                   - shows price of today
                           (2) TABLE : price_tomorrow
                               a. stock_code : VARCHAR(200) : Primary Key
                                   - stock code
                               b. price : INT
                                   - shows price of tomorrow
### 2. Test SQL Relations == testEnvironment.sql + solnHackerRank.sql


# (II) MYSQL SERVER INSTALLATION
** depending on ur OS choose either 1 or 2!!!
### (1) OS == Ubuntu or fedora
####    Install MYSQL
        - dnf install mysql
        -- OR
        - yum install mysql
        -- OR
        - apt install mysql

        - mysql_sercure_installation
            - set root password, plus securly install mysql

####     MYSQL Administration
        Check Mysql status
            - systemctl status mysql(d)

        Restart mysql
            - systemctl restart mysql(d)

        Start myql
            - systemctl start mysql(d)

### (2) OS == MacOS
####    Install MYSQL
        - brew install mysql

        - mysql_sercure_installation
            - set root password, plus securly install mysql

####     MYSQL Administration
        Check Mysql status
            - mysql.server status

        Restart mysql
            - mysql.server restart

        Start myql
            - mysql.server start

