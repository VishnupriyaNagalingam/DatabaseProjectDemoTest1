CREATE TABLE [dbo].[Tasks]
(
  [TaskId] INT NOT NULL PRIMARY KEY,
  [Sourcekey] INT,
  TaskStartDate Date,
  TaskCompleteDate Date,
  TaskOwner VARCHAR(100),
  TaskManager VARCHAR(100),
  TaskStatus VARCHAR(100),
  TaskSource VARCHAR(50),
  TaskName VARCHAR(100)
)
