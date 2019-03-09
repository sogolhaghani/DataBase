INSERT INTO [dbo].[MAJOR]
( -- Columns to insert data into
 [NAME]
)
VALUES
( -- First row: values for the columns in the list above
 N'ریاضی فیزیک'
),
( -- Second row: values for the columns in the list above
 N'علوم تجربی'
)
,
( -- Second row: values for the columns in the list above
 N'علوم انسانی'
)
-- Add more rows here
GO;

Select * FROM MAJOR;
-------------------------BOOK---------------------------------------
-- Add a new column '[CODE]' to table '[BOOK]' in schema '[dbo]'
ALTER TABLE [dbo].[BOOK]
    ADD [CODE] /*new_column_name*/ int /*new_column_datatype*/ NULL /*new_column_nullability*/
GO


-- Insert rows into table 'BOOK' in schema '[dbo]'
INSERT INTO [dbo].[BOOK]
( -- Columns to insert data into
 [NAME], [CODE]
)
VALUES
(N'شیمی (۱)', 110210),
(N'ریاضی(۱)', 110211),
(N'شیمی (2)', 111210),
(N'ریاضی(2)', 111211),
(N'شیمی (3)', 112210),
(N'ریاضی(3)', 112211),
(N'حسابان (1)', 111214),
(N'حسابان (2)', 112214),
(N'زبان خارجی 2',111230);

select * from book;
Select * FROM MAJOR;


-- Insert rows into table 'BOOKMAJORMID' in schema '[dbo]'
INSERT INTO [dbo].[BOOKMAJORMID]
( -- Columns to insert data into
 [BOOKID], [MAJORID], [GRADE]
)
VALUES
( 10,19,10),
( 11,19,10),
( 12,19,11),
( 14,19,12),
( 16,19,11),
( 17,19,12),
( 10,20,10),
( 11,20,10),
( 12,20,11),
( 14,20,12),
( 13,20,11),
( 15,20,12)

-------------------------TOPIC------------------------
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'تابع',null,0);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'آشنایی با تابع',2,0);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'انواع تابع',2,0);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'وارون تابع',2,0);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'اعمال روی توابع',2,0);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'تابع بعنوان یک ماشین',3,1);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'برابری دوتابع',3,1);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'توابع گویا',4,1);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N' توابع رادیکالی',4,1);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'تابع پله ای ـ تابع جزء صحیح',4,1);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'توابع یک به یک',5,1);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'محاسبه وارون یک تابع',5,1);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'جمع',6,1);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'تفریق',6,1);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'ضرب',6,1);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'تقسیم',6,1);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'ترکیب توابع',6,1);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'مثلثات',null,0);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'واحد‌های اندازه‌گیری زاویه',19,0);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'نسبتهای مثلثاتی',19,0);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'توابع مثلثاتی',19,0);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'نسبتهای مثلثاتی',19,0);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'توابع مثلثاتی',19,0);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'درجه',20,1);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'رادیان',20,1);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'sin',21,1);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'cos',21,1);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'tan',21,0);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'cot',21,1);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'نسبت های مثلثاتی زوایای متمم',21,1);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'نسبت های مثلثاتی زوایای قرینه',21,1);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'مقادیر نسبتهای مثلثاتی زاویههای مکمل',21,1);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N'رابطه شیب خط با تانژانت زاویه',27,1);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N' رسم تابع سینوس',22,1);
INSERT INTO [dbo].[TOPIC] ( [NAME], [PARENTID], [ISLEAF]) VALUES ( N' رسم تابع کسینوس',22,1);
-----------------------------BOOKTOPICMID---------------------------------
SELECT * from TOPIC;
SELECT * from BOOK;
SELECT * from BOOKTOPICMID;

INSERT INTO [dbo].[BOOKTOPICMID] ( [BOOKID], [TOPICID]) VALUES (11,25);
INSERT INTO [dbo].[BOOKTOPICMID] ( [BOOKID], [TOPICID]) VALUES (11,26);
INSERT INTO [dbo].[BOOKTOPICMID] ( [BOOKID], [TOPICID]) VALUES (11,29);
INSERT INTO [dbo].[BOOKTOPICMID] ( [BOOKID], [TOPICID]) VALUES (11,28);

INSERT INTO [dbo].[BOOKTOPICMID] ( [BOOKID], [TOPICID]) VALUES (11,4);
INSERT INTO [dbo].[BOOKTOPICMID] ( [BOOKID], [TOPICID]) VALUES (11,3);

INSERT INTO [dbo].[BOOKTOPICMID] ( [BOOKID], [TOPICID]) VALUES (13,8);
INSERT INTO [dbo].[BOOKTOPICMID] ( [BOOKID], [TOPICID]) VALUES (13,5);
INSERT INTO [dbo].[BOOKTOPICMID] ( [BOOKID], [TOPICID]) VALUES (13,6);
INSERT INTO [dbo].[BOOKTOPICMID] ( [BOOKID], [TOPICID]) VALUES (13,20);

INSERT INTO [dbo].[BOOKTOPICMID] ( [BOOKID], [TOPICID]) VALUES (13,30);
INSERT INTO [dbo].[BOOKTOPICMID] ( [BOOKID], [TOPICID]) VALUES (13,31);
INSERT INTO [dbo].[BOOKTOPICMID] ( [BOOKID], [TOPICID]) VALUES (13,32);

INSERT INTO [dbo].[BOOKTOPICMID] ( [BOOKID], [TOPICID]) VALUES (13,33);
INSERT INTO [dbo].[BOOKTOPICMID] ( [BOOKID], [TOPICID]) VALUES (13,34);


INSERT INTO [dbo].[BOOKTOPICMID] ( [BOOKID], [TOPICID]) VALUES (16,3);
INSERT INTO [dbo].[BOOKTOPICMID] ( [BOOKID], [TOPICID]) VALUES (16,5);
INSERT INTO [dbo].[BOOKTOPICMID] ( [BOOKID], [TOPICID]) VALUES (16,6);
INSERT INTO [dbo].[BOOKTOPICMID] ( [BOOKID], [TOPICID]) VALUES (16,20);

INSERT INTO [dbo].[BOOKTOPICMID] ( [BOOKID], [TOPICID]) VALUES (16,30);
INSERT INTO [dbo].[BOOKTOPICMID] ( [BOOKID], [TOPICID]) VALUES (16,31);
INSERT INTO [dbo].[BOOKTOPICMID] ( [BOOKID], [TOPICID]) VALUES (16,32);


