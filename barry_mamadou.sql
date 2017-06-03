create database mamadou_barry;
use mamadou_barry

create table Login(
Username varchar(20),
Password varchar(20),U
sertype varchar(20),
PRIMARY KEY(Username));

create table Donor(
Donor_id varchar(20)
 references Login(Username) ON DELETE CASCADE,
 Name varchar(20),
 Sex varchar(1)  NOT NULL,Age int NOT NULL,
 City varchar(20),
 Phone_num varchar(10) UNIQUE NOT NULL,
 PRIMARY KEY(Donor_id));



create table Blood(
Code varchar(3),
Bloodgroup varchar(20),
Cost int,
PRIMARY KEY(Code));

create table Donates(
 Did int,
 Donor_id varchar(20) references Donor(Donor_id) not null,
 Code varchar(3) references Blood(Code) not null,
 Donating_date date,
 PRIMARY KEY(Did));


create table BloodBankManager(
Emp_id varchar(20) references Login(Username) ON DELETE CASCADE,
Emp_name varchar(20) not null,
City varchar(20),
Phone_no varchar(10) unique,
 primary key(Emp_id));

create table BloodBank(
Blood_id int,
Bname varchar(20),
primary key(Blood_id));

create table Hospital(
Name varchar(20),
Phone_no varchar(10),City varchar(30), primary key(phone_no));

create table Recipient(
  Recipient_id int, Donor_id varchar(20) references Donor(Donor_id),
  Blood_id int references BloodBank(Blood_id),
  primary key(Recipient_id));

create table Stores(
  Blood_id int references BloodBank(Blood_id),
  Code varchar(3) references Blood(Code),
  Quantity int,primary key(Blood_id,Code));

create table Employee(
  Emp_id varchar(20) references BloodBankManager(Emp_id) ON DELETE SET NULL,
  Blood_id int references BloodBank(Blood_id) ON DELETE CASCADE,
  primary key(Emp_id,Blood_id));
 create table Orders(
   Oid int,
   Phone_no varchar(10) references Hospital(Phone_no),
   Blood_id int references BloodBank(Blood_id),
   Bloodtype varchar(20),
   Quantity int,
   Order_date Date,
   time varchar(20),
   primary key(Oid));


insert into Login values('max123','12345','D');
insert into Login values('anita34','12345','D');
insert into Login values('rasheed34',12345','D');
insert into Login values('natalie45','12345','D');
insert into Login values('mary67','12345','D');
insert into Login values('carl97','12345','M');
insert into Login values('nicole88','12345','M');


insert into Donor values('max123','max','F',21,'seattle','7204874414');
insert into Donor values('anita34','anita','F',21,'seattle','8762127340');
insert into Donor values('rasheed34','rasheed','M',21,'seattle','9449216577');
insert into Donor values('natalie45','natalie','F',21,'renton','7411074383');
insert into Donor values('mary67','mary','F',21,'renton','7204828720');



insert into Blood values('ABP','AB+',5000);
insert into Blood values('AP','A+',7000);
insert into Blood values('OP','O+',3000);
insert into Blood values('ON','O-',8000);
insert into Blood values('BP','B+',5000);

insert into Donates values(1,'max123','ABP','2013-12-12');
insert into Donates values(2,'anita34','AP','2010-3-12');
insert into Donates values(3,'rasheed34','OP','2015-4-25');
insert into Donates values(4,'natalie45','ON','2010-6-09');
insert into Donates values(5,'mary67','BP','2012-11-29');

insert into BloodBankManager values('carl97','joshua','seattle','9446534270');
insert into BloodBankManager values('nicole88','edgar','tacoma','8123678546');

insert into BloodBank values(123,'tony alvarez');

insert into Hospital values('kmc','9481148244','seattle');
insert into Hospital values('abs','9448214615','seattle');
insert into Hospital values('ch','9449626158','seattle');
insert into Hospital values('ajh','9449556453','seattle');
insert into Hospital values('ksh','9483457654','seattle');

insert into Recipient values(25,'max123',123);
insert into Recipient values(26,'anita34',123);
insert into Recipient values(27,'rasheed34',123);
insert into Recipient values(28,'natalie45',123);
insert into Recipient values(29,'mary67',123);

insert into Stores values(123,'ABP',5);
insert into Stores values(123,'AP',3);
insert into Stores values(123,'OP',5);
insert into Stores values(123,'ON',4);
insert into Stores values(123,'BP',6);

insert into Employee values('carl97',123);
insert into Employee values('nicole88',123);

insert into Orders values(50,'9481148244',123,'AB',1,'2016-09-13','10:12:59');
insert into Orders values(60,'9448214615',123,'ABP',2,'2011-1-07','08:02:39');
insert into Orders values(70,'9449626158',123,'BP',2,'2013-12-31','23:12:19');
insert into Orders values(80,'9449556453',123,'ON',3,'2013-02-10','18:15:14');
insert into Orders values(90,'9483457654',123,'OP',4,'2013-12-11','02:32:20');
