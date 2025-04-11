-- Create the table in the specified schema
CREATE TABLE dbo.Orders
(
    SourceKey INT NOT NULL PRIMARY KEY, -- primary key column
    OrderID [NVARCHAR](50) NOT NULL,
    StartDate DATETIME,
    CompleteDate DATETIME,
    CreatedBy [NVARCHAR](50),
    OrderStatus [VARCHAR](20),
    OrderTargetDate DATETIME
    -- specify more columns here
);
GO