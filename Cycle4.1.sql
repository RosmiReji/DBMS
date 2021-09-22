create table customer (
cid int primary key ,
cname varchar(20),
loc varchar(20),
sex varchar(20),
dob date
);
create table bank_brn (
bcode int primary key ,
bloc int,
bsate int
);
create  table deposit (
dacno int primary key,
dtype int,
ddate date,
damt int
);
create table loan (
lacno int primary key,
ltype varchar(20),
ldate date,
lamt int
);
create table account_in(
bcode int primary key,
cid int references customer(cid) 
);
create table depositor(
 cid int primary key,
 dacno INT references deposit(dacno)
 );
 create table borrower(
 cid int references customer(cid),
 lacno int references loan(lacno)
 );

show tables; 
 Desc customer;
 desc bank_bm;
 desc deposit;
 desc loan;
 desc account_in;
 desc depositor;
 desc borrower;
 drop table customer,borrower,account_in,depositor;
 