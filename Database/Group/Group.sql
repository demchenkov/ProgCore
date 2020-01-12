CREATE TABLE [dbo].[Group]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(50) NOT NULL, 
    [HandmanId] INT NULL, 
    CONSTRAINT [FK_GroupHandman_ToUser] FOREIGN KEY ([HandmanId]) REFERENCES [ApplicationUser]([Id])
)
