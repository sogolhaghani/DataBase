-- select * 
-- from [User] where id = 5

--  UPDATE [User] 
--  SET AGE = 20
--  where id = 5
--Tran 1 

set TRANSACTION ISOLATION LEVEL Repeatable Read
BEGIN TRANSACTION

select Age
from [User] where id = 5

WAITFOR Delay '00:00:05'

select Age
from [User] where id = 5

commit TRANSACTION


-- Tran 2
BEGIN TRANSACTION

update [USER]
set age = 17
where ID = 5

commit TRANSACTION