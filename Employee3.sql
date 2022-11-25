use C2268;
create table Employee3(
emp_ID int primary key, EName varchar(20) not null,
Designation varchar(20) not null, dept varchar(20),
working_hours varchar(10), salary integer(6));

#Insert Datas into Employee3 table
insert into Employee3 values
(1,'Devkanta','Engineer','EE','8','10000'),
(2,'Sourav','SME','BCA','6','11000'),
(3,'Arnab','MGR','CSE','10','12000'),
(4,'Souvik','Admin','ME','7','13000'),
(5,'Akash','MGR','CE','5','14000'),
(6,'Ripan','ASST','ME','3','15000'),
(7,'Somu','SME','EE','11','16000'),
(8,'Subho','ASST','BBA','12','17000'),
(9,'Chayan','Admin','CS','8','18000'),
(10,'Chandan','MGR','ME','9','19000');

#aggregates function ----- count
select dept, count(dept) as 'total_emp_in_dept' from Employee3 group by dept;
#sum
select dept, sum(working_hours) as 'total_hours' from Employee3 group by dept;
select dept, sum(working_hours) as 'total_hours' from Employee3 where dept= 'bca';
select dept, sum(salary) as 'total_hours' from Employee3 group by dept;
#avg
select dept, avg(salary) as 'total_hours' from Employee3 group by dept;
#min
select EName, dept, min(salary) as 'avg_dept_salary' from Employee3 group by dept;
select min(salary) from Employee3;
#max
select EName, dept, max(salary) as 'avg_dept_salary' from Employee3 group by dept;
select max(salary) from Employee3;
#having
select dept, sum(working_hours) as 'total_hours' from Employee3 group by dept having sum(working_hours)>15;
