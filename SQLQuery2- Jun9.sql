-- create new database
create database ecomm

--switch/change database
use ecomm

--create tables
--category
--product
--country
--customer
--sales_order

category
-------
cid cname 


CREATE TABLE Product
(PID int,
Pname varchar(100)
)



create table category 
(
cid int,  -- number 
cname varchar(100)  -- alpha numeric  
)

--view data , * : show all columns 
select * from category 

select cname from category 

--with alias
select cid as category_id, cname [category name] from category 

--insert data into table 
insert into category(cid,cname)
values(2,'foods')


--product:
pid
pname
brandname
cid 

create table product 
(
pid int identity(100,2),
pname varchar(100) not null,
brandname  varchar(100) not null,
cid  int not null,
price  float
)

insert into product 
values('lux','bb',1,3444.3)

select * from product 

product_stock
-------------
sid 
pid 
flag
quantity
date
mfd
bno
exp_date

--country
cid 
cname 

customer
-----------------
cuid
fname
lname
emailid
phone
address
cid
is_active




data type
====================
numeric:
	tinyint
	int
	bigint

	float		:33.244		: 4 byte = 32 bit 
	double		:33.445454
	numeric(5,2) =123.45

alpha numeric:
	char(5)		: FIX SIZE	='A4'
	nchar(5)	: FIX SIZE		
	varchar(5)	: DYNAMIC SIZE
	nvarchar(5)	: DYNAMIC SIZE	
	text		: <EMP> 111 </EMPT>
	ntext
	**n : unicode (multiple langauge)
	
DATE
	date		yyyy-mm-dd
	datetime yyyy-mm-dd	hh:mm
	smalldatetime	yyyy-mm-dd hh:mm:ss:mis

bit
	true  -1/ false - 0
other:
	image
	varbinary
	currency
	etc.
			






