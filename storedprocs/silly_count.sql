USE company;
DELIMITER //
CREATE PROCEDURE silly_count(IN dept INT, OUT sillyCount INT)
BEGIN
    DECLARE actualCount INT DEFAULT 0;

    SELECT count(*)
    INTO actualCount
    FROM COMPANY.EMPLOYEE
    WHERE Dno = dept;

    IF (actualCount % 2 = 0) THEN
        SET sillyCount = actualCount;
    ELSE
        SET sillyCount = actualCount * -1;
    end if;

END //
DELIMITER ;

