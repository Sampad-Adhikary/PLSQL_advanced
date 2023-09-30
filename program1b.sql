DECLARE
    num1 NUMBER := 10;
    num2 NUMBER := 80;
	num3 NUMBER;
BEGIN
    -- Call the procedure
    calculate_sum(num1, num2,num3);
	SELECT num3;
END;

DECLARE
    total INT;
BEGIN
    -- Call the procedure
    calculate_sum_2('Rocky',total);
    SELECT total;
    calculate_sum_2('Jane',total);
    SELECT total;
    calculate_sum_2('Ron',total);
    SELECT total;
    calculate_sum_2('Jonny',total);
    SELECT total;
END;