

-- Create a Global Temporary Table in Oracle

CREATE GLOBAL TEMPORARY TABLE TempEmployees (
    EmployeeID NUMBER,
    salary number,
    LastName VARCHAR2(50),
    Department VARCHAR2(50)
) ON COMMIT DELETE ROWS;

