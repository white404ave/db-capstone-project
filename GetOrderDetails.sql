CREATE DEFINER=`root`@`localhost` PROCEDURE `GetOrderDetailsByCustomerID`(IN InputCustomerID INT)
BEGIN
    SELECT OrderID, Quantity, TotalCost
    FROM orders
    WHERE CustomerID = InputCustomerID;
END