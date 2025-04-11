CREATE PROCEDURE [dbo].[GetTasksCountByStartMonth]
  @Startdate date,
  @Enddate date
AS
  SELECT convert(VARCHAR(7),TaskStartDate, 120) as TaskStartMonth, TaskSource, Count(*) as TaskCount
  from Tasks
  GROUP BY convert(VARCHAR(7),TaskStartDate, 120),TaskSource
RETURN 0
