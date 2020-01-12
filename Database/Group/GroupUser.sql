CREATE TABLE [dbo].[GroupUser]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [GroupId] INT NOT NULL, 
    [UserId] INT NOT NULL, 
    CONSTRAINT [FK_GroupUser_ToGroup] FOREIGN KEY ([GroupId]) REFERENCES [Group]([Id]), 
    CONSTRAINT [FK_GroupUser_ToUser] FOREIGN KEY ([UserId]) REFERENCES [ApplicationUser]([Id])
)
