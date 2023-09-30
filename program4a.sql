-- Create a table to demonstrate the trigger
CREATE TABLE demo_table (
  id INT AUTO_INCREMENT PRIMARY KEY,
  description VARCHAR(255),
  created_at TIMESTAMP,
  modified_at TIMESTAMP
);

-- Create a trigger that updates the timestamps when a new row is inserted
CREATE TRIGGER update_timestamp
BEFORE INSERT ON demo_table
FOR EACH ROW
BEGIN
  SET NEW.created_at = NOW(); -- Set the created_at timestamp
  SET NEW.modified_at = NOW(); -- Set the modified_at timestamp
END;

-- Create a trigger that updates the modified_at timestamp when a row is updated
CREATE TRIGGER update_timestamp_update
BEFORE UPDATE ON demo_table
FOR EACH ROW
BEGIN
  SET NEW.modified_at = NOW(); -- Set the modified_at timestamp
END;