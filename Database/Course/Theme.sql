CREATE TABLE [dbo].[Theme]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [CourseId] INT NOT NULL, 
    [Title] NVARCHAR(100) NOT NULL, 
    [CreatedBy] INT NOT NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    CONSTRAINT [FK_Theme_ToCourse] FOREIGN KEY ([CourseId]) REFERENCES [Course]([Id]), 
    CONSTRAINT [FK_Theme_ToUser] FOREIGN KEY ([CreatedBy]) REFERENCES [ApplicationUser]([Id])
)
