CREATE OR REPLACE PROCEDURE calculate_sum(
    p_num1 NUMBER,      -- Input parameter: First number
    p_num2 NUMBER,      -- Input parameter: Second number
    v_sum OUT NUMBER    -- Output parameter: Resulting sum
) AS
BEGIN
    -- Calculate the sum of p_num1 and p_num2
    v_sum := p_num1 + p_num2;
END;



CREATE OR REPLACE PROCEDURE calculate_sum_2(
    s_name VARCHAR(30), -- Input parameter: Student name
    total OUT INT       -- Output parameter: Total marks
)
AS
BEGIN
    -- Calculate the total marks for the student based on subject1 and subject2
    SELECT SUM(subject1 + subject2) INTO total FROM Students_marks WHERE student_name = s_name;
    
    -- Update the total field in the Students_marks table with the calculated total
    UPDATE Students_marks SET total = total WHERE student_name = s_name;
    
    -- Commit the transaction to save the changes to the database
    COMMIT;
END;

