-- This file contains SQL statements that will be executed after the build script.
-- Insert sample data into Orders
INSERT INTO dbo.Orders (SourceKey, OrderID, StartDate, CompleteDate, CreatedBy, OrderStatus, OrderTargetDate)
VALUES 
(1001, 'Web_1001', '2024-08-01', '2024-08-05', 'Mathumitha', 'Completed', '2024-08-06'),
(1002, 'App_1002', '2024-08-03', '2024-08-07', 'Srimathi', 'Completed', '2024-08-10'),
(1003, 'Store_1003', '2024-08-04', NULL, 'Bobby', 'Pending', '2024-08-12'),
(1004, 'Web_1004', '2024-08-05', '2024-08-09', 'Mathumitha', 'Completed', '2024-08-10');

-- Insert sample data into Tasks
INSERT INTO dbo.Tasks (TaskId, Sourcekey, TaskStartDate, TaskCompleteDate, TaskOwner, TaskManager)
VALUES 
(1, 1001, '2024-08-01', '2024-08-02', 'Alice', 'John'),
(2, 1001, '2024-08-02', '2024-08-03', 'Bob', 'John'),
(3, 1002, '2024-08-03', '2024-08-05', 'Charlie', 'David'),
(4, 1003, '2024-08-05', NULL, 'Eve', 'Bobby'),
(5, 1004, '2024-08-06', '2024-08-07', 'Frank', 'Bobby');

-- Update TaskStatus in Tasks
Update Tasks set TaskStatus = case when TaskCompleteDate is not null then 'Completed' else 'In Progress' END