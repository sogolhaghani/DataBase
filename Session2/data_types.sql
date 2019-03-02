--Data type categories



-- Exact numerics

--  1.bigint    -2^63 (-9,223,372,036,854,775,808) to 2^63-1 (9,223,372,036,854,775,807)	8 Bytes

--  2.int       -2^31 (-2,147,483,648) to 2^31-1 (2,147,483,647)	                        4 Bytes

--  3.smallint  -2^15 (-32,768) to 2^15-1 (32,767)	                                        2 Bytes

--  4.tinyint	0 to 255	                                                                1 Byte

--  5.bit       0 - 1 - NULL

--  6.decimal and numeric (p[,s])

--  7.money and smallmoney

SELECT 2147483647 / 2 AS Result1, 2147483649 / 2 AS Result2 ;
----------------------------------------------------------------------
-- Approximate numerics
--  1.float(n)      1=< n <=24  4 byte / 24< n <=53  8 byte
--  2.real          4byte


---------------------------------------------------------------------
----------------------------Date and time----------------------------
--  1.Date          0001-01-01 through 9999-12-31        
--                  YYYY-MM-DD                     3byte
--                  Gregorian

--  2.datetime      1753-01-01 through 9999-12-31        
--                  YYYY-MM-DD hh:mm:ss.nnn        8 bytes
--                  Gregorian

--  3.datetime2     0001-01-01 through 9999-12-31        
--                  YYYY-MM-DD hh:mm:ss.nnnnnnn    
--                  Gregorian

-- 4.datetimeoffset 0001-01-01 through 9999-12-31        
--                  YYYY-MM-DD hh:mm:ss[.nnnnnnn] [{+|-}hh:mm]
--                  Gregorian

-- 5.time           hh:mm:ss[.nnnnnnn] 

-- 6.smalldatetime


---------------------------------------------------------------------
----------------------------Character strings------------------------

--  1.char              fixed length
--  2.varchar           variable length
--  3.nchar                     
--  4.nvarchar          
--  6.nbinary
