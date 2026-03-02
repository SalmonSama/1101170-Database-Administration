CREATE TABLE employee (
    empnum char(4),
    empname varchar(15),
    hiredate datetime,
    salary int,
    position varchar(15),
    depno char(2),
    mgrno char(4),
    CONSTRAINT employee_PK PRIMARY KEY (empnum)
);

CREATE TABLE dep (
    depno char(2),
    depname varchar(15),
    location varchar(15),
    CONSTRAINT depno_PK PRIMARY KEY (depno)
);

CREATE TABLE project (
    projno char(2),
    projdesc varchar(20),
    startdate datetime,
    enddate datetime,
    budget int,
    CONSTRAINT projno_PK PRIMARY KEY (projno)
);

CREATE TABLE projwork (
    projno char(2),
    empnum char(4),
    hours int
);