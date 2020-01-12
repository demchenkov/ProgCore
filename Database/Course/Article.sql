CREATE TABLE [dbo].[Article]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(100) NOT NULL, 
    [Content] NVARCHAR(MAX) NOT NULL, 
    [ThemeId] INT NOT NULL, 
    [CreatedBy] INT NOT NULL, 
    CONSTRAINT [FK_Article_ToTheme] FOREIGN KEY ([ThemeId]) REFERENCES [Theme]([Id]), 
    CONSTRAINT [FK_Article_ToUser] FOREIGN KEY ([CreatedBy]) REFERENCES [ApplicationUser]([Id])
)
