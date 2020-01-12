CREATE TABLE [dbo].[TaskScore]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [SenderId] INT NOT NULL, 
    [ExerciseId] INT NOT NULL, 
    [Score] INT NULL, 
    [CheckedAt] DATETIME NULL, 
    [CheckedBy] INT NULL, 
    CONSTRAINT [FK_ExerciseScoreCheckedBy_ToUser] FOREIGN KEY ([CheckedBy]) REFERENCES [ApplicationUser]([Id]), 
    CONSTRAINT [FK_ExerciseScoreSender_ToUser] FOREIGN KEY ([SenderId]) REFERENCES [ApplicationUser]([Id]), 
    CONSTRAINT [FK_ExerciseScore_ToTask] FOREIGN KEY ([ExerciseId]) REFERENCES [Exercise]([Id])
)
