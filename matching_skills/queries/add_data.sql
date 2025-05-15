-- Create tables for Data Science Skills Matching question

-- Create candidates table according to the problem statement
CREATE TABLE candidates (
    candidate_id INTEGER PRIMARY KEY,
    skill VARCHAR(100) NOT NULL
);

-- Insert sample data as shown in the problem statement
INSERT INTO candidates (candidate_id, skill) VALUES
    (123, 'Python'),
    (123, 'Tableau'),
    (123, 'PostgreSQL'),
    (234, 'R'),
    (234, 'PowerBI'),
    (234, 'SQL Server'),
    (345, 'Python'),
    (345, 'Tableau');

-- Add some additional test data
INSERT INTO candidates (candidate_id, skill) VALUES
    (456, 'Python'),
    (456, 'PostgreSQL'),
    (456, 'R'),
    (567, 'Tableau'),
    (567, 'PostgreSQL'),
    (567, 'Python'),
    (678, 'Python'),
    (678, 'Tableau'),
    (678, 'PostgreSQL'),
    (678, 'R'),
    (789, 'PostgreSQL'),
    (789, 'SQL Server'),
    (890, 'Tableau'),
    (890, 'PowerBI');

-- The required skills for the Data Science job are:
-- 1. Python
-- 2. Tableau
-- 3. PostgreSQL
