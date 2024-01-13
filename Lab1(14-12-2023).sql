use sakila;
show tables; /*ดูข้อมูล Table ทั้งหมดที่มี*/
select * from actor; /*เลือกข้อมูลทั้งหมดใน Table ที่ต้องการใช้*/
describe actor;

select *
from actor
where actor_id = 'OFF';

create database Lab1; /*สร้าง data base*/
use Lab1;/*ใช้ ข้อมูล data baseที่เลือก*/
show tables; /*ดูข้อมูล Table ทั้งหมดที่มี*/

/*Class ใน JAVA ชัดๆ*/
create table persons (
Person_id char(3) not null,
RateHour int(2) default null,
Person_name varchar(100) default null,
address varchar(100) default null,
BirthDate date default null,
PRIMARY KEY (Person_id)
) ENGINE = InnoDB default charset=utf8;

show tables; /*ดูข้อมูล Table ทั้งหมดที่มี*/
describe persons; /*เลือก Tableในการใช้งาน*/
/*สร้างข้อมูลครั้งแรกใน Table*/
insert into persons (Person_id,RateHour,Person_name,address,BirthDate) values ('01',10,'จักรพัชร','จรัญ13','2003-08-22');

/*สร้างข้อมูลครั้งต่อๆมาใน Table*/
insert into persons values ('02',10,'จักรพัชร','จรัญ13','2003/08/22');
insert into persons values ('03',10,'จักรพัชร','จรัญ13','2003/08/22');
select * from persons; /*ใช้ดูข้อมูลใน Table Person*/
select * from persons where Person_id = '01'; /*แสดงข้อมุลที่เลือก*/

update persons set Person_name = 'อครเดช อภินิหารเกรียงไกล ณ วังกระแสน้ำวน' where Person_id ='001'; /*แก้ไขข้อมูลใน table*/
delete from persons where Person_id = '03'; /*ลบข้อมูลใน Table ที่เลือกจากตัวแปลที่กำหนด*/
select * from persons; /*ใช้ดูข้อมูลใน Table Person*/