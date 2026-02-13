-- Create students table
CREATE TABLE students (
    id SERIAL PRIMARY KEY,          -- Auto-increment unique ID
    name VARCHAR(100) NOT NULL,     -- Student name
    admission_date DATE,            -- Can be NULL if not provided
    roll_number INT UNIQUE,         -- Unique roll number
    merit BOOLEAN DEFAULT FALSE     -- Default value if not given
);

-- Insert full row with all values
INSERT INTO students (name, admission_date, roll_number, merit)
VALUES ('Sangeetha', '2025-02-01', 2000101, TRUE);

-- Insert row with NULL admission_date
INSERT INTO students (name, admission_date, roll_number, merit)
VALUES ('Sathish', NULL, 2000102, TRUE);

-- Insert row without merit (uses DEFAULT FALSE)
INSERT INTO students (name, admission_date, roll_number)
VALUES ('Meena', '2025-02-03', 2000103);

-- Update one student’s merit status
UPDATE students
SET merit = TRUE
WHERE name = 'Meena';

-- Update multiple rows at once
UPDATE students
SET admission_date = '2025-02-10'
WHERE merit = TRUE;

-- Delete one student by roll number
DELETE FROM students
WHERE roll_number = 2000102;

-- Delete all students with merit = FALSE
DELETE FROM students
WHERE merit = FALSE;

SELECT * FROM students WHERE admission_date IS NULL;
