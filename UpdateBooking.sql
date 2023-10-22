CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateBooking`(
    IN p_BookingID INT,
    IN p_BookingDate DATE
)
BEGIN
    UPDATE bookings
    SET Date = p_BookingDate
    WHERE BookingID = p_BookingID;
END