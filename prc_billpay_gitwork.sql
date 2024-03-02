Create or replace procedure electricity_bill
(p_usnnumber number,
p_name out varchar,
p_dueamount out number,
p_duedate  out date,
p_msg out varchar2
)
as
l_count number;
begin

select count(*) into l_count from electricityboard
                where usnnumber=p_usnnumber;

if l_count=0 then
p_msg :='INVALID USNNumber';
elsif l_count>0 then
select name,dueamount,duedate into p_name,p_dueamount,p_duedate from electricityboard
                where usnnumber=p_usnnumber and status='N';
p_msg :='pending dueamount';
end if;
exception
when NO_DATA_FOUND then
p_msg :='NO PENDING DUE';
end;
