CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

CREATE TABLE Dept_Employees (
    EmployeeID INT PRIMARY KEY,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE Dept_Mngr (
    ManagerID INT PRIMARY KEY,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Employee_Title VARCHAR(50),
    Birth_Date DATE,
    Sex CHAR(1),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    HireDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Dept_Employees(EmployeeID),
    FOREIGN KEY (EmployeeID) REFERENCES Dept_Mngr(ManagerID)
);

CREATE TABLE Salaries (
    EmployeeID INT PRIMARY KEY,
    Salary INT,
    FOREIGN KEY (EmployeeID) REFERENCES Dept_Employees(EmployeeID),
    FOREIGN KEY (EmployeeID) REFERENCES Dept_Mngr(ManagerID)
);

CREATE TABLE Titles (
    TitleID INT PRIMARY KEY,
    Title VARCHAR(50)
);