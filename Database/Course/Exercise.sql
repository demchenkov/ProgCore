CREATE TABLE [dbo].[Exercise]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Title] NVARCHAR(100) NOT NULL, 
    [Content] NVARCHAR(MAX) NOT NULL, 
    [CreatedBy] INT NOT NULL, 
    [ThemeId] INT NOT NULL, 
    [MaximumScore] INT NULL, 
    CONSTRAINT [FK_Exercise_ToUser] FOREIGN KEY ([CreatedBy]) REFERENCES [ApplicationUser]([Id]), 
    CONSTRAINT [FK_Exercise_ToTheme] FOREIGN KEY ([ThemeId]) REFERENCES [Theme]([Id])
)
