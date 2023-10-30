CREATE DEFINER=`root`@`localhost` PROCEDURE `AddValidBooking`(IN p_BookingDate DATE, IN p_TableNumber INT, IN p_CustomerID INT)
BEGIN
    DECLARE existing_bookings INT;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
    END;
    
    START TRANSACTION;
    
    SELECT COUNT(*) INTO existing_bookings
    FROM bookings
    WHERE Date = p_BookingDate AND TableNumber = p_TableNumber;
    
    IF existing_bookings > 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Table is already booked under another name.';
    ELSE
        INSERT INTO bookings (Date, TableNumber, CustomerID)
        VALUES (p_BookingDate, p_TableNumber, p_CustomerName);
        COMMIT;
    END IF;
END