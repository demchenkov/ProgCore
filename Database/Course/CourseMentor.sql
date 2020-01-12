CREATE TABLE [dbo].[CourseMentor]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [CourseScheduleId] INT NOT NULL, 
    [UserId] INT NOT NULL, 
    CONSTRAINT [FK_CourseMentor_ToUser] FOREIGN KEY ([UserId]) REFERENCES [ApplicationUser]([Id]), 
    CONSTRAINT [FK_CourseMentor_ToCourseSchedule] FOREIGN KEY ([CourseScheduleId]) REFERENCES [CourseSchedule]([Id])
)
