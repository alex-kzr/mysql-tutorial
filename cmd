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
mysql> SOURCE test.sql;
mysql> DROP DATABASE test;