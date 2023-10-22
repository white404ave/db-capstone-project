CREATE DEFINER=`root`@`localhost` PROCEDURE `GetMaxQuantity`()
SELECT  MAX(Quantity)
From orders