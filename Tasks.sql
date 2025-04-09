CREATE TABLE [dbo].[Tasks]
(
  [TaskId] INT NOT NULL PRIMARY KEY,
  [Sourcekey] INT,
  TaskStartDate Date,
  TaskCompleteDate Date
)
