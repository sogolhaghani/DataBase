-- select * 
-- from [User] where id = 5

--  UPDATE [User] 
--  SET AGE = 20
--  where id = 5
--Tran 1 

BEGIN TRANSACTION

select *
from [User] where id > 10

WAITFOR Delay '00:00:05'

select Age
from [User] where id > 10

commit TRANSACTION


-- Tran 2
BEGIN TRANSACTION

INSERT into [USER] (name, FAMILY, age, sex,USERNAME, [PASSWORD])
VALUES 
('new row name', 'new row name',22,1, 's.ahmadi','123')

commit TRANSACTION