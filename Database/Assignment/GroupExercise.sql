CREATE TABLE [dbo].[GroupTask]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [GroupId] INT NOT NULL, 
    [ExerciseId] INT NOT NULL, 
    [CourseScheduleId] INT NOT NULL, 
    [StartDate] DATE NULL, 
    [FinishDate] DATE NULL, 
    CONSTRAINT [FK_GroupExercise_ToGroup] FOREIGN KEY ([ExerciseId]) REFERENCES [Exercise]([Id]), 
    CONSTRAINT [FK_GroupExercise_ToTask] FOREIGN KEY ([GroupId]) REFERENCES [Group]([Id]), 
    CONSTRAINT [FK_GroupExercise_ToCourseSchedule] FOREIGN KEY ([CourseScheduleId]) REFERENCES [CourseSchedule]([Id])
)
