sudo apt update
sudo apt install mysql-server

sudo service mysql status // check mysql server status
sudo service mysql start // start mysql server service
sudo service mysql stop // stop mysql server service

sudo mysql_secure_installation // set up mysql installation, create root pass

sudo apt install phpmyadmin php-mbstring php-gettext // install phpmyadmin

sudo mysql // run mysql console with root user

// create DB and fill with data
mysql> CREATE DATABASE university; // create university DB
mysql> USE university; // change DB to university
mysql> SOURCE DLL.sql; // load script
mysql> SOURCE InsertStatements.sql; // load script

// work with DB
mysql> SHOW DATABASES;
mysql> CREATE DATABASE test;
mysql> USE test;
mysql> SOURCE test.sql;
mysql> DROP DATABASE test;

// work with tables
mysql> SHOW TABLES;
mysql> CREATE TABLE instructor (
  ID CHAR(5),
  name VARCHAR(20) NOT NULL,
  dept_name VARCHAR(20),
  salary NUMERIC(8,2),
  PRIMARY KEY (ID),
  FOREIGN KEY (dept_name) REFERENCES department(dept_name)
);
mysql> DESCRIBE instructor; // show table description

mysql> SELECT * FROM instructor; // select all records with all columns from table instructor

mysql> INSERT INTO instructor (ID, name, dept_name, salary)
    VALUES ('55555', 'Zilberdoich', 'Biology', '150000.5'); // insert new record into table instructor

mysql> UPDATE instructor
    SET salary = '200000'
    WHERE ID = '55555'; //  

mysql> DELETE FROM destructor; // delete all records from table destructor

mysql> DROP TABLE destructor;