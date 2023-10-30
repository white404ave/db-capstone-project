CREATE DEFINER=`root`@`localhost` PROCEDURE `AddBooking`(
    IN p_BookingID INT,
    IN p_CustomerID INT,
    IN p_BookingDate DATE,
    IN p_TableNumber INT
)
BEGIN
    INSERT INTO bookings (BookingID, CustomerID, Date, TableNumber)
    VALUES (p_BookingID, p_CustomerID, p_BookingDate, p_TableNumber);
END