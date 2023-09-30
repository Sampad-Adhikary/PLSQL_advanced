-- Declare a cursor to retrieve student data
DECLARE
  CURSOR student_cursor IS
    SELECT id, student_name, subject1, subject2
    FROM Students
    WHERE class = 10;

  -- Declare variables to store the column values
  stu_id Students.id%TYPE;         -- Student ID
  stu_name Students.student_name%TYPE; -- Student Name
  sub1 Students.subject1%TYPE;       -- Subject 1
  sub2 Students.subject2%TYPE;       -- Subject 2
  row_count INT;                    -- Variable to store row count
BEGIN
  row_count := 0;  -- Initialize the row count to zero

  -- Open the cursor to start fetching data
  OPEN student_cursor;

  -- Loop through the result set
  LOOP
    -- Fetch data into variables
    FETCH student_cursor INTO stu_id, stu_name, sub1, sub2;

    -- Exit the loop if there are no more rows
    EXIT WHEN student_cursor%NOTFOUND;

    -- Increment the row count for each row processed
    row_count := row_count + 1;

    -- Display student information (you can perform any operations here)
    SELECT stu_name, stu_id, sub1, sub2;
  END LOOP;

  -- Display the total number of rows processed
  SELECT row_count;

  -- Close the cursor
  CLOSE student_cursor;
END;