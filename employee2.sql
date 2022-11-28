use c2268;
create table employee2(
emp_ID numeric(6), lastName varchar(25), job_ID varchar(10), 
salary integer(6), comm_per integer(4) , mgr_ID integer(6), dept_ID numeric(4));
#inserting datas into employee2 table
insert into employee2 values
(1,'Sourav','SH_Clerk','10000','2.5','10','11'),
(2,'Priya','Asst_Manager','11000','3.2','30','12'),
(3,'Prakash''Manager','12000','3.0','30','11'),
(4,'pallab','AD_Manager','13000','4.0','40','14'),
(5,'Souvik','AC_Manager','14000','4.0','50','15'),
(6,'Sourav','GR_Manager','15000','6.1','50','14'),
(7,'Tanmay','IT_Prog','16000','2.3','40','17'),
(8,'Krishna','S4','17000','3.4','70','16'),
(9,'Ganesh','AD_ASST','18000','1.8','70','16'),
(10,'Shibu','SH_Clerk','19000','1.9','80','20');
select emp_ID, lastName, job_ID from employee2;
select * from employee2 where dept_ID=16;
#distinct
select distinct job_ID from employee2;
#as
select lastName, salary, salary+300 as 'Increased_salary' from employee2;
select lastName, salary, salary+ comm_per+100 as 'Anual_compensation' from employee2;
#><
select emp_ID, dept_ID, salary from employee2 where salary >5000;
select emp_ID, dept_ID, salary from employee2 where salary <15000;
#and / or
select * from employee2 where salary between 15000 and 20000;
select * from employee2 where salary =15000 or salary =11000 or salary =13000;
#!=
select * from employee2 where salary !=15000;
update employee2 set job_ID='Grade-A' where salary >=17000;
select * from employee2 where job_ID='SH_Clerk' and salary<15000;