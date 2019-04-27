---exp 1----------

select  a.CITYID , 
        COUNT(case when u.SEX = 1 then 1 end ) FEMALE,
        COUNT(case when u.SEX = 0 then 1 end ) MALE,
        COUNT(a.ID) as NumberOFUSER , 
        avg(u.AGE) AS AVG
from [USER] AS U
INNER JOIN ADDRESS as A on a.USERID = u.ID  
--WHERE u.AGE > 16  
GROUP BY a.CITYID --, u.SEX
--HAVING avg(u.AGE) > 16 

---exp 2----------
select *
from TOPIC where ID in (

    select t1.PARENTID
    from TOPIC t1
    GROUP BY t1.PARENTID
    HAVING COUNT(t1.PARENTID) > 2
)
---exp 3----------
select c.NAME, AVG(u.age), max(u.AGE), COUNT(u.ID)
FROM [USER] as U
INNER JOIN ADDRESS as A on a.USERID = u.ID
INNER Join CITY as c on c.ID = a.CITYID
where u.age > 14

GROUP by c.NAME
HAVING AVG(u.age) > 15
