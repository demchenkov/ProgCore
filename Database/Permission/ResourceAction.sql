CREATE TABLE [dbo].[ResourceAction]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ResourceId] INT NOT NULL, 
    [ActionId] INT NOT NULL, 
    CONSTRAINT [FK_ResourceAction_ToResource] FOREIGN KEY ([ResourceId]) REFERENCES [Resource]([Id]), 
    CONSTRAINT [FK_ResourceAction_ToAction] FOREIGN KEY ([ActionId]) REFERENCES [Action]([Id])
)
