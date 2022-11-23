use C2268;
create table empl (ID numeric(2), ID_Name varchar(10), Basic numeric(6),
Designation varchar (10), Age numeric(2));
alter table empl modify Basic integer(6);
alter table empl modify ID_Name varchar(15);
create table emp_trainee(Emp_ID numeric(2), ID_Name varchar(10),
Basic numeric(6), Designation varchar(10), Age numeric(2));
insert into empl values
(1,'Rohit', 3000,'Manager',27),
(2,'Priya',2000,'Manager',24),
(3,'Prakash',2500,'Manager',27),
(4,'pallab',3500,'Manager',24),
(5,'Souvik',4000,'Manager',26),
(6,'Sourav',2700,'Manager',25);
insert into emp_trainee select * from empl;
select * from empl, emp_trainee;
alter table empl add Skills varchar(15) after Age;
alter table empl add DOJ date after Skills;
update empl set Skills= 'JAVA' where ID=1;
update empl set Skills= 'C++' where ID=2;
update empl set Skills= 'C' where ID=3;
update empl set Skills= 'Python' where ID=4;
update empl set Skills= 'sql' where ID=5;
update empl set Skills= 'JS' where ID=6;
update  empl set DOJ ='2022-02-05' where ID=1;
update  empl set DOJ ='2022-03-07' where ID=2;
update  empl set DOJ ='2022-06-15' where ID=3;
update  empl set DOJ ='2022-07-11' where ID=4;
update  empl set DOJ ='2022-10-12' where ID=5;
update  empl set DOJ ='2022-12-18' where ID=6;
alter table emp_trainee modify Designation varchar(30);
update emp_trainee set Designation ='IT_Specialist';
update empl set Skills= 'Python' where Designation ='Manager';
select * from empl, emp_trainee;
delete from empl where DOJ = '2022-02-18'; 