CREATE PROCEDURE dbo.GetOrdersByStatus
    @FromDate DATE,
    @ToDate Date
AS
BEGIN
--Testing
    SELECT OrderStatus, COUNT(*) as OrdersCount FROM dbo.Orders
    WHERE StartDate BETWEEN @FromDate and @ToDate
    GROUP BY OrderStatus
END;
