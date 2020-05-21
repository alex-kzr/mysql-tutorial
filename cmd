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

// SELECT
mysql> SELECT * FROM department;
mysql> SELECT dept_name FROM department;
mysql> SELECT dept_name
    FROM department
    WHERE building = 'Watson';

mysql> SELECT *
    FROM course
    WHERE dept_name = 'Comp. Sci.';

mysql> SELECT *
    FROM course
    WHERE credits > 3;

mysql> SELECT * 
    FROM course
    WHERE dept_name='Comp. Sci.' AND credits>3;

mysql> SELECT * 
    FROM course
    WHERE dept_name='Comp. Sci.' OR credits>3;

// GROUP BY
mysql> SELECT COUNT(course_id), dept_name
    FROM course
    GROUP BY dept_name;

mysql> SELECT MAX(credits), dept_name
    FROM course
    GROUP BY dept_name;

mysql> SELECT MIN(credits), dept_name
    FROM course
    GROUP BY dept_name;

mysql> SELECT AVG(credits), dept_name
    FROM course
    GROUP BY dept_name;

mysql> SELECT SUM(salary), dept_name
    FROM instructor
    GROUP BY dept_name;

// HAVING
mysql> SELECT COUNT(course_id), dept_name
    FROM course
    GROUP BY dept_name
    HAVING COUNT(course_id) > 1; // we can't use WHERE while using agregate functions

// ORDER BY
mysql> SELECT *
    FROM course
    ORDER BY credits; // ordered ASC by default

mysql> SELECT *
    FROM course
    ORDER BY credits DESC;

// BETWEEN
mysql> SELECT *
    FROM instructor
    WHERE salary BETWEEN 50000 AND 100000;

// LIKE
mysql> SELECT *
    FROM course
    WHERE title LIKE '%to%';

mysql> SELECT *
    FROM course
    WHERE course_id LIKE 'CS-___';

// IN
mysql> SELECT * FROM student
  WHERE dept_name IN ('Comp. Sci.', 'Physics', 'Elec. Eng.');

// JOIN
mysql> SELECT * FROM course 
    JOIN department 
    ON course.dept_name = department.dept_name;

mysql> SELECT prereq.course_id, title, dept_name, credits, prereq_id
    FROM prereq
    LEFT OUTER JOIN course
    ON prereq.course_id=course.course_id;

mysql> SELECT course.course_id, title, dept_name, credits, prereq_id
    FROM prereq
    RIGHT OUTER JOIN course
    ON prereq.course_id=course.course_id;