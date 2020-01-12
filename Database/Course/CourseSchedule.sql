CREATE TABLE [dbo].[CourseSchedule]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [StartDate] DATE NOT NULL, 
    [FinishData] DATE NOT NULL, 
    [CourseId] INT NOT NULL, 
    [GroupId] INT NOT NULL, 
    CONSTRAINT [FK_CourseSchedule_ToCourse] FOREIGN KEY ([CourseId]) REFERENCES [Course]([Id]), 
    CONSTRAINT [FK_CourseSchedule_ToGroup] FOREIGN KEY ([GroupId]) REFERENCES [Group]([Id])
)
