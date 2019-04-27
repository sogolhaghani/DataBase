-- view 
CREATE view BOOKINFO AS
select  b.ID    AS BOOKID,
        b.NAME  AS BOOK_NAME, 
        m.NAME  AS MAJOR_NAME
from BOOK as b
INNER JOIN BOOKMAJORMID bm on bm.BOOKID = b.ID
INNER JOIN MAJOR m on m.ID = bm.MAJORID;

INSERT into BOOK
VALUEs ('test' ,'132')

SELECT * from BOOK
Select * from MAJOR
SELECT * from BOOKMAJORMID

insert into BOOKMAJORMID
VALUEs(19, 21,4)

select * from BOOKINFO


DELETE BOOKMAJORMID where id = 13;
DELETE BOOK where ID = 19;


----create view as with cte
create VIEW TOPIC_LEVEL_VIEW AS
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
