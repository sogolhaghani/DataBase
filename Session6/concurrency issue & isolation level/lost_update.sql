-- select * 
-- from [User] where id = 5

--  UPDATE [User] 
--  SET AGE = 20
--  where id = 5
SET TRANSACTION ISOLATION LEVEL Repeatable READ
--Tran 1 
BEGIN TRANSACTION

DECLARE @age int
select @age = age 
from [User] where id = 5

WAITFOR Delay '00:00:10'

set @age = @age -1

update [USER]
set age = @age 
where id = 5

PRINT @age
commit TRANSACTION
-----------------------------------------
-- Tran 2
SET TRANSACTION ISOLATION LEVEL Repeatable READ
BEGIN TRANSACTION
DECLARE @age int
select @age = age 
from [User] where id = 5

WAITFOR Delay '00:00:01'

set @age = @age -2

update [USER]
set age = @age 
where id = 5

PRINT @age

commit TRANSACTION