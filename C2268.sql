CREATE DATABASE C2268;
use C2268student;
create table Student (id int primary key auto_increment, sname varchar(20) not null, sphone bigint(11) not null unique,
 semail varchar(30) not null unique, sadd varchar(50), squalification varchar(10) not null, sdept varchar(20));
# add new column
alter table Student ADD age int after sdob;
# modify datatype size
alter table Student MODIFY squalification varchar (20) not null;
# drop coloumn
alter table Student drop column sdept;
# change column name
alter table Student rename to Student_details;
# insert signal row  
insert into Student_details values (1, 'Koushik', 7047567930,'koushik16pramanik@gmail.com','Garhbeta', 'B.tech','IT');
# insert multiple rows 
insert into Student_details values (2, 'Souvik', 123456789,'souvikpramanik18@gmail.com','Garhbeta', 'Agri');
insert into Student_details values (3, 'Tanmay', 012345678,'tanmaypal18@gmail.com','Garhbeta', 'B.tech');
insert into Student_details values (4, 'Debu', 12345670,'debupatra18@gmail.com','Garhbeta', 'B.SC');
insert into Student_details values (5, 'Sudip', 6296523,'sudippal18@gmail.com','Garhbeta', 'B.SC');
insert into Student_details values (6, 'Suman', 4563210,'sumanpal18@gmail.com','Garhbeta', 'B.Com');
insert into Student_details values (7, 'Pathik', 7895642,'pathikmondal18@gmail.com','Garhbeta', 'BBA');
insert into Student_details values (8, 'Sourav', 256472,'souravdey18@gmail.com','Garhbeta', 'BCA');
insert into Student_details values (9, 'Saikat', 025863,'saikatpramanik18@gmail.com','Garhbeta', 'B.Com');
insert into Student_details values (10, 'Rick', 258630,'rickchoudhary18@gmail.com','Garhbeta', 'BBA');
