CREATE TABLE [dbo].[UserInfo]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [FirstName] NVARCHAR(50) NOT NULL, 
    [LastName] NVARCHAR(50) NOT NULL, 
    [Birthday] DATE NULL, 
    [UserId] INT NOT NULL, 
    [Variant] INT NULL, 
    [BitbucketUsername] NVARCHAR(50) NULL, 
    CONSTRAINT [FK_UserInfo_ToUser] FOREIGN KEY ([UserId]) REFERENCES [ApplicationUser]([Id])
)
