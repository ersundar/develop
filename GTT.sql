CREATE GLOBAL TEMPORARY TABLE TempEmployees (
    EmployeeID NUMBER,
    FirstName VARCHAR2(50),
    LastName VARCHAR2(50),
    Department VARCHAR2(50)
) ON COMMIT DELETE ROWS;

CREATE GLOBAL TEMPORARY TABLE TempEmployees (
    EmployeeID NUMBER,
    FirstName VARCHAR2(50),
    LastName VARCHAR2(50),
    Department VARCHAR2(50)
    ) 
