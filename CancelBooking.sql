CREATE DEFINER=`root`@`localhost` PROCEDURE `CancelBooking`(
    IN p_BookingID INT
)
BEGIN
    DELETE FROM bookings
    WHERE BookingID = p_BookingID;
END