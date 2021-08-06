use Payrollservice;
create table employee_payroll(
	id int unsigned not null auto_increment,
	name varchar (15) not null,
	salary double not null,
    start date not null,
    primary key (id)

);
insert into employee_payroll (name,salary,start) values ('Anil',10000.0,'2021-01-03');
insert into employee_payroll (name,salary,start) values ('Sunil',30000.0,'2020-02-05');
insert into employee_payroll (name,salary,start) values ('Sagar',5000.0,'2021-07-04');
insert into employee_payroll (name,salary,start) values ('Samrudhi',7000.0,'2021-04-11');
select * from employee_payroll;
select * from employee_payroll where name = 'Anil'; 
select * from employee_payroll where start between cast('2021-01-01' As date) and Date (now());
Alter table employee_payroll add gender varchar(1) after name;
update employee_payroll set gender = 'M' where name = 'Anil';
update employee_payroll set gender = 'M' where name = 'Sunil';
update employee_payroll set gender = 'M' where name = 'Sagar';
update employee_payroll set gender = 'F' where name = 'Samrudhi';
select salary from employee_payroll;
select sum(salary) from employee_payroll;
select min(salary) from employee_payroll;
select max(salary) from employee_payroll;
select count(salary) from employee_payroll;
select avg(salary) from employee_payroll;
select sum(salary) from employee_payroll where gender = 'F' group by gender;
alter table employee_payroll 
add phone varchar(20), 
add address varchar(200) default 'address1' ,
add department varchar(20)  not null ;
update employee_payroll set department='Finance' where name in ('Anil','Samrudhi');
select * from employee_payroll;  
alter table employee_payroll add basic_pay int, add deductions int, add taxable_pay int  ,add tax int,add net_pay int;
create table employee_payroll(
	id int unsigned not null auto_increment,
	name varchar (15) not null,
	gender varchar(1),
    start date not null,
    phone varchar(20), 
    address varchar(200) default 'address1',
    department varchar(20)  not null ,
    basic_pay int, 
    deductions int,
    taxable_pay int  ,
    tax int,
    net_pay int,
  
    primary key (id)

);

insert into employee_payroll (name,department,gender,basic_pay
,deductions,taxable_pay,tax,net_pay,start) values
	('Terissa','Marketing','F',3000000,1000000,
    2000000,500000,1500000,'2021-07-08');
    
insert into employee_payroll (name,department,gender,basic_pay
,deductions,taxable_pay,tax,net_pay,start) values
	('Terissa','Sales','F',3000000,
    0,0,0,0,'2021-06-01');
update employee_payroll set phone = '8217451010' where name = 'Terissa';
select * from employee_payroll;
drop table employee_payroll;
alter table emp_payroll
drop column department;

create table department(
	id int auto_increment not null,
    name varchar(40) not null,
    primary key (id)
);

select * from department;
insert into department(name) values("Sales");
insert into department(name) values("Merketting");

create table employee_department(
	employee_id int not null,
	department_id int not null,
    foreign key (employee_id) references employee(id),
    foreign key (department_id) references department(id),
    primary key (employee_id, department_id)
);

create table employee(
	id int not null auto_increment,
    name varchar (15) not null,
    salary double not null,
    start date not null,
    primary key (id)
);
drop table department;



