CREATE TABLE [dbo].[Permission]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [RoleId] INT NOT NULL, 
    [ResActionId] INT NOT NULL, 
    [IsActive] BIT NOT NULL DEFAULT 0, 
    CONSTRAINT [FK_Permission_ToResourceAction] FOREIGN KEY ([ResActionId]) REFERENCES [ResourceAction]([Id]), 
    CONSTRAINT [FK_Permission_ToRole] FOREIGN KEY ([RoleId]) REFERENCES [ApplicationRole]([Id])
)
