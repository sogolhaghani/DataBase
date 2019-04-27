-- Home work

--root

WITH cte AS(

      SELECT *, NAME as ROOT_NAME, ID as ROOT_ID
      FROM TOPIC 
      WHERE PARENTID IS NULL
  
    UNION ALL
  
      SELECT t.*,c.ROOT_NAME, c.ROOT_ID
      FROM TOPIC t
	    JOIN cte c   ON c.id = t.PARENTID
)
SELECT ROOT_NAME 
FROM cte where ID = 7

--Level
WITH cte AS(

      SELECT *, 1 as [level]
      FROM TOPIC 
      WHERE PARENTID IS NULL
  
    UNION ALL
  
      SELECT t.*, c.[level] + 1
      FROM TOPIC t
	    JOIN cte c ON c.id = t.PARENTID
)
SELECT * FROM cte
where [level] > 3


-- common books
select * from BOOK where id in (
    
    select BOOKID
    from BOOKMAJORMID 
    GROUP by BOOKID
    HAVING COUNT(BOOKID)> 1

);
-- not in tajrobi
select *
from TOPIC where id in(
    select bt.TOPICID
    FROM BOOKMAJORMID bm
    INNER JOIN BOOKTOPICMID bt on bt.BOOKID = bm.BOOKID
    where bm.MAJORID = (select ID from MAJOR where NAME like N'%ریاضی%')
    EXCEPT
    select bt.TOPICID
    FROM BOOKMAJORMID bm
    INNER JOIN BOOKTOPICMID bt on bt.BOOKID = bm.BOOKID
    where bm.MAJORID in (select ID from MAJOR where NAME not like N'%ریاضی%')
)