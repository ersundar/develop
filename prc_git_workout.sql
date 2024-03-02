--WRITE a PLSQL Procedure to ask DeptNo from user and display the details of employees (Using Cursors)
set serveroutput on
create or replace procedure p1
(
pdept employees.department_id %type 
)
as
i employees%rowtype;
cursor c1 is select * from employees where department_id= pdept;
begin
open c1;
loop
fetch c1 into i;
dbms_output.put_line(i.first_name||' '||i.salary);
exit when c1 %notfound;
end loop;
close c1;
end;
/
