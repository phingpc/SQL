use sakila;
select abs(-123);
select count(*) from actor;
select * from actor;
select count(actor_id) from actor;
select substring(first_name,2,3) from actor;
select substring(first_name,4) from actor;
select substring(first_name,1,(length(first_name)-2)) from actor;

/* assignment (lab)*/
create table `empp` (
`empNo` char(7) not null,
`empName` char(30) not null,
`empaddr` char(20) not null,
`empEmail` char(20) not null,
`empSalary` int not null,
primary key (`empNo`)
) DEFAULT CHARSET=utf8;
insert into `empp` value ('AA01122','Landi Santos','Denvor','landi@hotmail.com',16000),
('BB02233','Joe Jankins','Seattle','joe@yahoo.com',15000),
('CC03344','Cherry Gordon','Seattle','cherry@hotmail.com',20000),
('CC04455','Colin White','Denvor','colin@hotmail.com',25000),
('AA05566','Thomas Johnson','Lynnwood','thomas@yahoo.com',27000),
('BB06677','Candy Kendall','Denvor','candy@gmail.com',18000),
('AA07788','Smite Gordon','Denvor','smith@gmail.com',22000),
('CC08899','Cherry Gordon','Lynnwood','jessy@yahoo.com',17000),
('CC12233','Susan Santos','Denvor','susan@gmail.com',19000),
('AA23344','John Sanders','Lynnwood','jogn@gmail.com',23000);


select * from empp;

select * from empp where empEmail like '%@gmail.com' order by empEmail asc;

select distinct upper(empName) from empp;
