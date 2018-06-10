create database hrms_ex
use hrms_ex

create table employee
(
eid					int,
fn					varchar(40),
ln					varchar(40),
gender				char(1),
country				varchar(100),
department			varchar(200),
emailid				varchar(40),
[mobile no]			int,
dob					date,
doj					date
)

--alter table and change data type 
alter table employee
alter column [mobile no]	bigint 


--save
insert into employee(eid,fn,ln,gender,country,department,emailid
,[mobile no],dob,doj)
values(100,'nitin','sinha','m','india','hr','niitin@gmail.com',
9999999999,'1990-01-11','2018-05-20')

--or 
insert into employee
values(1003,'nitin','sinha','m','india','hr','niitin@gmail.com',
9999999999,'1990-01-11','2018-05-20')


--insert into particular column
insert into employee(eid,fn,ln,gender,doj)
values(1001,'jatin','kapoor','m','2018-05-20')

--OR
insert into employee(doj,eid,fn,ln,gender)
values('2018-05-20',1002,'jatin','kapoor','m')

--INSERT USING SELECT 
insert into employee
SELECT 1005,'nitin','sinha','m','india','hr','niitin@gmail.com',
9999999999,'1990-01-11','2018-05-20'


--BLUK INSERT 
insert into employee(eid,fn,ln,gender,doj)
values(2001,'jatin2','kapoor','m','2018-05-20'),
(3001,'jatin3','kapoor','m','2018-05-20'),
(4001,'jatin4','kapoor','m','2018-05-20'),
(5001,'jatin5','kapoor','m','2018-05-20'),
(6001,'MONIKA','SHARMA','F','2018-05-20')


--BLUCK INSERT USING SELECT
insert into employee(eid,fn,ln,gender,doj)
SELECT 3001,'jatin2','kapoor','m','2018-05-20'
UNION SELECT 4001,'jatin2','kapoor','m','2018-05-20'
UNION SELECT 5001,'jatin2','kapoor','m','2018-05-20'
UNION SELECT 6001,'jatin2','kapoor','m','2018-05-20'
UNION SELECT 7001,'jatin2','kapoor','m','2018-05-20'
UNION SELECT 7001,'jatin2','kapoor','m','2018-05-20'



--SELECT FROM TABLE 
insert into employee
select * from employee

--view data  , * : show all columns
select * from employee
select eid,fn,ln  from employee

-- NULL IS DEFAULT VALUE IN SQL 

-- WITH CONSTRAINTS

create table employee_constraint
(
eid					int primary key,
fn					varchar(40) not null,
ln					varchar(40) null,
gender				char(1) check (gender in ('m','f')),
country				varchar(100)  not null,
department			varchar(200) not null,
emailid				varchar(40) unique,
[mobile no]			int unique,
dob					date not null,
doj					date not null,
e_status			char(9)   default 'active',
create_date			datetime  default getdate()
)


select * from employee_constraint 

insert into employee_constraint(eid,fn,gender,country,department,emailid,[mobile no],dob,doj)
values(1001,'nitin','m','india','hr','nitin1@gmail.com',322231,'1990-01-01','2018-11-20')


100	nitin	NULL	m	india	hr	nitin@gmail.com	32223	1990-01-01	2018-11-20	active   	2018-06-10 09:35:03.353
1001	nitin	NULL	m	india	hr	nitin1@gmail.com	322231	1990-01-01	2018-11-20	active   	2018-06-10 09:35:36.787

-- create salary table 
create table salary 
(
id int identity(1,1),
employeeid int foreign key references employee_constraint (eid),
hra int,
basic int
)

insert into salary 
values(200,40000,20000)


