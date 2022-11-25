use C2268;
create table Student_join( Id int primary key, 
					Fname Varchar(15),
					Lname Varchar(15),
                    Age int(3),
                    City varchar(10),
                    Form_no varchar(2));
insert into Student_join values(1,'Sankalpa','Das',23,'Hooghly','A1');
insert into Student_join values(2,'Akash','Sarkar',24,'Kolkata','A2');
insert into Student_join values(3,'Debkanta','Chakrabarty',25,'Patuli','A3');
insert into Student_join values(4,'Arnab','Mondal',19,'Nadia','A4');
insert into Student_join values(5,'Deepraj','Poddar',24,'New town','A5');
insert into Student_join values(6,'Srikanta','Biswas',24,'Garia','A6');
insert into Student_join values(7,'Avik','Das',23,'Howrah','A7');
insert into Student_join values(8,'Adil','Rahaman',25,'Behala','A8');
insert into Student_join values(9,'Puja','Sarkar',22,'Barasat','A9');
insert into Student_join values(10,'Bidisha','Sahoo',20,'Rampurhat','B1');

create table fees(form_no varchar(4),amount int,course varchar(15));
insert into fees values
('A1',2000,'java'),
('A2',4000,'java'),
('A3',5000,'python'),
('A4',3000,'ml'),
('A5',2500,'ml'),
('A6',2000,'python'),
('A7',5500,'dsa'),
('A8',4500,'dsa'),
('A9',6000,'c++'),
('B1',7000,'c#');
#inner join
select Fname, Lname, amount, course from Student_join inner join fees on Student_join.form_no = fees.form_no;
select Fname, amount, course from Student_join inner join fees on Student_join.form_no = fees.form_no;
#cross join
select*from Student_join cross join fees;
# self join
select s1.Fname, s1.Age from Student_join s1 inner join Student_join s2 on s1.Age = s2.Age and s1.Id<>s2.Id order by s1.Id;
