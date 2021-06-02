create database PRM
CREATE TABLE Login
(
	UserId int identity(1,1) primary key NOT NULL,
	UserName varchar(50) NULL,
	Password varchar(50) NULL,
)
CREATE TABLE Employee
(
UserId int foreign key references Login(userId),
	EmpId int IDENTITY(1,1) primary key NOT NULL,
	Name varchar(50) NULL,
	Password nvarchar(50) NULL,
	DateOfBirth varchar(50) NULL,
	Email nvarchar(50) NULL,
	MobileNumber bigint NULL,
	Address nvarchar(50) NULL,
	Designation varchar(50) NULL,
	Gender varchar(50) NULL,
	Department varchar(50) NULL,
	state varchar(50) NULL,
	City varchar(50) NULL,
	PanCardNo bigint NULL,
	);
	CREATE TABLE SalaryReport(
	EmpId int foreign key references Employee(EmpId),
	SalaryReportId int NULL,
	Deparment int NULL,
	EmployeeSalaryMonth varchar(50) NULL,
	PF decimal(18, 0) NULL,
	NetSalary decimal(18, 0) NULL,
	EmployeeSalaryYear int NULL,
	Basic decimal(18, 0) NULL,
	MedicalAllowences decimal(18, 0) NULL,
	Gross decimal(18, 0) NULL,
	ProfessionalTax decimal(18, 0) NULL
);

CREATE TABLE WorkSheet(
	EmpId int foreign key references Employee(EmpId),
    SheetId int NULL,
	Department varchar(50) NULL,
	TeamLeader varchar(50) NULL,
	Day varchar(50) NULL,
	Date date NULL,
	AssignedTo varchar(50) NULL,
	StartTime time(7) NULL,
	ProjectStatus  varchar(100) NULL,
	EndTime time(7) NULL,
	OverTimeHours time(7) NULL,
	TotalWorkingHours time(7) NULL
);

CREATE TABLE ApplyLeave(
	EmpId int foreign key references Employee(EmpId),
	LeaveId int NULL,
	DateOfLeave date NULL,
	LeaveStatus varchar(50) NULL,
	Reason varchar(500) NULL
);
CREATE TABLE State(
	StateId int primary key IDENTITY(1,1) NOT NULL,
	StateName varchar(50) NULL
	)

create table Administrator
(
UserName varchar (50) NOT NULL,
Password Varchar (50) NULL
)
CREATE TABLE Department(
	DeptId int primary key NOT NULL,
	DeptName varchar(50) NULL
	)
select *from Login

select *from Employee

select *from SalaryReport

select *from WorkSheet

select *from ApplyLeave

Select*from Administrator

select*from Department

select*from State
