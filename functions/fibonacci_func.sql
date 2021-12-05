DELIMITER //
CREATE FUNCTION fibonacci(x INT) RETURNS INT
BEGIN
    DECLARE counter INT DEFAULT 0;
    DECLARE fib1 INT DEFAULT 0;
    DECLARE fib2 INT DEFAULT 1;
    DECLARE temp INT;

    if x <= 0 THEN RETURN 0;
    end if;

    calc_loop: LOOP   -- calc_loop is just a label. The actual key word here is LOOP
        SET counter = counter + 1;
        if counter = x THEN LEAVE calc_loop;
        end if;

        SET temp = fib1;
        SET fib1 = fib2;
        set fib2 = temp + fib1;

    end loop;

    RETURN fib2;
END //
DELIMITER ;
