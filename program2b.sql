DECLARE
  sum_result NUMBER;
BEGIN
  sum_result := add_numbers(5, 6);
  SELECT sum_result;
END;