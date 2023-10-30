CREATE DEFINER=`root`@`localhost` PROCEDURE `CheckBooking`(IN InputTableNumber INT, IN InputDate DATE, OUT IsBooked BOOL)
BEGIN
    DECLARE count_bookings INT;
    
    SELECT COUNT(*) INTO count_bookings
    FROM bookings
    WHERE TableNumber = InputTableNumber
    AND DATE(Date) = InputDate;
    
    IF count_bookings > 0 THEN
        SET IsBooked = TRUE;
    ELSE
        SET IsBooked = FALSE;
    END IF;
END