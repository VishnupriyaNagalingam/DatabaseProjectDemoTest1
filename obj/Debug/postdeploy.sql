-- This file contains SQL statements that will be executed after the build script.
INSERT INTO dbo.Tasks (TaskId, Sourcekey, TaskStartDate, TaskCompleteDate, TaskOwner, TaskManager)
VALUES 
(10, 1000, '2024-08-03', '2024-08-05', 'Alice', 'John')

Update Tasks set TaskSource=Case when TaskStatus='Completed' then 'BPM' else 'Flightdeck Task' END
GO
