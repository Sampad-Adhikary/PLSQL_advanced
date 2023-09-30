-- Create a simple PL/SQL function that adds two numbers
CREATE OR REPLACE FUNCTION add_numbers(a NUMBER, b NUMBER) RETURN NUMBER IS
  result NUMBER;
BEGIN
  -- Calculate the sum
  result := a + b;

  -- Return the result
  RETURN result;
END add_numbers;
