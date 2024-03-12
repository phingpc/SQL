#LAB Join
use labdb;

####################################################################################
# 1 --> แสดงรายชื่อพนักงาน กับ department
select * from departments;

select * from employees;
#การแสดงผลจากการดึงข้อมูลจาก table มาอย่างเดียว ยังไม่มีการ join ใดๆ
select First_name , Last_name , Department_name from departments, employees;
#Join
select First_name , Last_name , Department_name from departments, employees 
where departments.department_id = employees.department_id;
# inner join
select First_name, Last_name, Department_name from departments inner join employees
on departments.department_id = employees.department_id;
####################################################################################
# 2 --> เพิ่มรหัส 5 XXXY ลงใน Departments

insert into departments (department_id,department_name) values (5,"XXXY");

select * from departments;
# แก้ไข employee_id ที่ 2 ให้ department_id เป็น 9
update  employees set department_id = '9' where employee_id = '2'; 
# ลบข้อมูลที่ department_id เป็น 5
delete from departments where department_id = 5;
####################################################################################
# 3 --> ให้แสดงรายชื่อพนักงานที่ไม่มีใน department

select First_name , Last_name , department_name from employees 
left join departments on departments.department_id = employees.department_id;

select First_name, Last_name, Department_name from departments 
right join employees on departments.department_id = employees.department_id;

####################################################################################
# 4 --> ข้อข้ามข้อ 5 จากใน slide : ให้แสดงชื่อคน ของ table person และ แสดงรหัสโปรเจคและชื่อหัวหน้า

select * from persons;
select * from projects;
select * from works;
#join
#ลอง ทำแบบนี้ก่อน
select persons.person_id ,projects.project_id, projects.manager_id
        from persons, works,projects 
        where persons.person_id = works.person_id 
              and projects.project_id = works.project_id;
# Success
select  persons.person_id, persons.ratehour, persons.person_name , persons.address , persons.birthdate, projects.project_id,projects.manager_id
	from persons, works,projects 
	where persons.person_id = works.person_id 
	and projects.project_id = works.project_id;
####################################################################################
# 5 --> แสดงรายชื่อ department , รายชื่อพนักงานโดยไม่สนใจว่าจะมีพนักงานหรือไม่

select department_name , First_name , Last_name from employees right join departments
on departments.department_id = employees.department_id;