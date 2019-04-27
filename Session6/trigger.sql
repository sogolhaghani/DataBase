--drop trigger tr_UserLoggin_For_INSERT

CREATE TRIGGER tr_UserLoggin_For_INSERT
on UserLoggin
For INSERT
AS
BEGIN
    
    DECLARE @ID BIGINT
    Declare @name NVARCHAR(255)
    DECLARE @Message NVARCHAR(MAX)
    DECLARE @TYPE BIGINT
    
    set @ID = (select ID from inserted)

    set @name = (select (NAME + ' '+ Family) 
    from [User] as u 
    INNER join USERLOGGIN as ul on ul.userID = u.ID
    where ul.ID =  @ID)
    
    
    set @TYPE = (case 
                    when (select ISLOGGIN from USERLOGGIN where ID =  @ID) =1 then 
                        (select ID From NOtificationType where CODE = 'LOGGIN')
                    else (select ID From NOtificationType where CODE = 'LOGOUT')
                end)
    
    
    set @Message = (
        case when (select ISLOGGIN from USERLOGGIN where ID =  @ID) =1 then
 (@name + N'در تاریخ ' + CONVERT(varchar, getdate(), 23) + N'وارد سامانه شده است')
        else (@name + N'در تاریخ ' + CONVERT(varchar, getdate(), 23) + N'از سامانه خارج شده است')
        end
    )
    
    INSERT into Notification
    VALUES (@Message ,  
            (select USERID from USERLOGGIN where ID =  @ID), 
            @TYPE)


            
    Declare @NotificationID BIGINT
    set @NotificationID = ( select top(1) ID from Notification ORDER by id desc)

    INSERT into NOTIFICATIONRECEPIANT(userID, NotificationID)
    VALUES ((select USERID from USERLOGGIN where ID =  @ID),
            @NotificationID)    
End