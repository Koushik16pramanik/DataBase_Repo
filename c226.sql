CREATE DATABASE c226;
use c226;
create table Students(
id int primary key auto_increment,
sname varchar(20) not null,
sphone bigint(11) not null unique,
semail varchar(30) not null unique,
saddr varchar(50),
squalification varchar(10) not null,
sfees double,
sdob date,
sdept varchar(20)
);
# add new column
alter table Students ADD age int after sdob;
# modify datatype size
alter table Students MODIFY squalification varchar(20) not null;
#modify constraint
alter table Students MODIFY sfees double not null;
# drop column
alter table Students DROP COLUMN sdept;
# change column name
alter table Students CHANGE COLUMN age sage int;
# rename table name
alter table Students RENAME TO student_detail;
# insert single row
insert into student_detail values
(1, 'Koushik', 7047567930,'koushik16pramanik@gmail.com','Garhbeta', 'B.tech',1000.3,'1900-00-00',00);
# insert multiple rows
insert into student_detail values 
(2, 'Souvik', 123456789,'souvikpramanik18@gmail.com','Garhbeta', 'Agri',1000.3,'1988-10-01',27),
(3, 'Tanmay', 012345678,'tanmaypal18@gmail.com','Garhbeta', 'B.tech',1000.3,'1988-08-02',29),
(4, 'Debu', 12345670,'debupatra18@gmail.com','Garhbeta', 'B.SC',1000.3,'1997-07-03',23),
(5, 'Sudip', 6296523,'sudippal18@gmail.com','Garhbeta', 'B.SC',1000.3,'1998-06-04',25),
(6, 'Suman', 4563210,'sumanpal18@gmail.com','Garhbeta', 'B.Com',1000.3,'2000-05-05',29),
(7, 'Pathik', 7895642,'pathikmondal18@gmail.com','Garhbeta', 'BBA',1000.3,'1990-04-06',28),
(8, 'Sourav', 256472,'souravdey18@gmail.com','Garhbeta', 'BCA',1000.3,'1988-03-07',26),
(9, 'Saikat', 025863,'saikatpramanik18@gmail.com','Garhbeta', 'B.Com',1000.3,'1988-02-08',33),
(10, 'Rick', 258630,'rickchoudhary18@gmail.com','Garhbeta', 'BBA',1000.3,'1979-12-09',40);
