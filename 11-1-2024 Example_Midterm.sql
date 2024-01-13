create database Mid650710673;
use Mid650710673;

create table department (
department_id int(11) unsigned PRIMARY KEY,
department_name varchar(12) default null
);

create table employees (
employee_id int(11) unsigned not null,
first_name varchar(20) default null,
last_name varchar(25) not null,
email varchar(25) not null,
phone_number varchar(20) default null,
hire_date date not null,
job_id varchar(10) not null,
salary decimal(8,2) not null,
manager_name varchar(60) default null,
department_id int(11) unsigned,
index(department_id),
primary key(employee_id),
#foreign key(department_id) references department(department_id)
# chat GPT ช่วย
CONSTRAINT fk_department_id
        FOREIGN KEY (department_id)
        REFERENCES department(department_id)
        ON UPDATE RESTRICT
        ON DELETE RESTRICT
);
#drop table employees;
#drop table department;
show tables;

desc employees;

INSERT INTO department VALUES (60, 'IT'), (100, 'Finance');
insert into employees values 
(103,'Alexander','Hunold','AHUNOLD','509.423.4567','1990-01-03','Programmer',9000,'Lex De Haan',60),
(104,'Bruce','Ernst','BERNST','509.423.4568','1991-05-21','Programmer',6000,'Alexander Hunold',60),
(105,'David','Austin','DAUSTIN','509.423.4569','1997-06-25','Programmer',4800,'Alexander Hunold',60),
(106,'Valli','Pataballa','VPATABAL','509.423.4560','1998-02-05','Programmer',4800,'Alexander Hunold',60),
(107,'Diana','Lorentz','DLORENTZ','509.423.5567','1999-02-07','Programmer',4200,'Alexander Hunold',60),
(109,'Danial','Faviet','DFAVIET','515.124.4169','1994-08-16','Accountant',9000,'Nancy Greenberg',100),
(110,'John','Chen','JCHEN','515.124.4269','1997-09-28','Accountant',8200,'Nancy Greenberg',100),
(111,'Ismael','Sciarra','ISCIARRA','515.124.4369','1997-09-30','Accountant',7700,'Nancy Greenberg',100),
(112,'Jose Manuel','Urman','JMURMAN','515.124.4469','1998-03-07','Accountant',7800,'Nancy Greenberg',100),
(113,'Luis','Popp','LPOPP','515.124.4569','1999-12-07','Accountant',6900,'Nancy Greenberg',100);

select * from employees;

INSERT INTO department VALUES (200, 'Head Office');
INSERT INTO employees VALUES 
(100, 'Steven', 'King', 'SKING', '515.123.4567', '1987-06-17', 'President' , 24000, null, 200);
select * from employees;

select * from employees where phone_number not like '590%' and first_name not like 'Alexander' ;
#select * from employees where first_name not like 'Alexander' ;
