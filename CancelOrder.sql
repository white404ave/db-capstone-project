CREATE DEFINER=`root`@`localhost` PROCEDURE `CancelOrder`(IN InputOrderID INT)
BEGIN
    DELETE FROM orders 
    WHERE OrderID = InputOrderID;
END