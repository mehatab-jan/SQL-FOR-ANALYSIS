create database sql_1;
use sql_1;
create table students(S_id int,S_name varchar(50),Age int,gender varchar(20),dept varchar(40));
insert into students values
(1,'mehatab',20,'female','csd');
SELECT * FROM STUDENTS;
ALTER TABLE STUDENTS MODIFY S_ID INT NOT NULL;
ALTER TABLE STUDENTS ADD constraint PRIMARY KEY (S_ID);
CREATE TABLE DEPARTMENT
( D_ID INT ,S_ID INT,D_NAME VARCHAR(45),SALARY INT ,PRIMARY KEY(D_ID), FOREIGN KEY(S_ID) REFERENCES STUDENTS (S_ID));
DROP TABLE DEPARTMENT;