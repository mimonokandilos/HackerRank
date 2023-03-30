# (I)HOW TO LOGIN INTO MYSQL
### * must have mysql installed first(if not go to second section)
Login Workflow:

- open terminal
- type "mysql -u root -p" 
    - enter root password
- Start DB Initalziation and Testing

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

