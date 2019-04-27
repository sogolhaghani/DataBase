-- ALTER DATABASE Kargah
-- set Allow_snapshot_isolation on

--Tran 1 

--set TRANSACTION ISOLATION LEVEL Serializable

BEGIN TRANSACTION

update [User] 
set age = 16
where id = 5

commit TRANSACTION
----------------------------------------------

-- Tran 2  select
set TRANSACTION ISOLATION LEVEL snapshot

BEGIN TRANSACTION

select *
from [User] where id = 5

commit TRANSACTION

---example for update snapshot  tarn2
set TRANSACTION ISOLATION LEVEL snapshot
BEGIN TRANSACTION
update [User] 
set age = 18
where id = 5
commit TRANSACTION



