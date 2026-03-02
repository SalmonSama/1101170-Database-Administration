CREATE TABLE Employee 
( 
	EmpID char(4) NOT NULL,
	FirstName nvarchar(30) NOT NULL,
	LastName nvarchar(30) NOT NULL,
	Address nvarchar(50) NOT NULL,
	HireDate datetime	NOT NULL,
	Position nvarchar(30)	NOT NULL,
	Salary	smallmoney	NOT NULL,
	EndDate	datetime	NULL,
CONSTRAINT PK_Employee PRIMARY KEY (EmpID), 
CONSTRAINT AK_EmpName UNIQUE (FirstName, LastName), 
CONSTRAINT CK_Salary CHECK (Salary < 100000)
); 