-- Create tables for Data Science Skills Matching question

-- Create candidates table according to the problem statement
DROP TABLE IF EXISTS candidates;
CREATE TABLE candidates (
    candidate_id INTEGER,
    skill VARCHAR(100) NOT NULL,
    PRIMARY KEY (candidate_id, skill)
);

-- Insert sample data EXACTLY as shown in the problem statement
INSERT INTO candidates (candidate_id, skill) VALUES
    (123, 'Python'),
    (123, 'Tableau'),
    (123, 'PostgreSQL'),
    (234, 'R'),
    (234, 'PowerBI'),
    (234, 'SQL Server'),
    (345, 'Python'),
    (345, 'Tableau');

-- The required skills for the Data Science job are:
-- 1. Python
-- 2. Tableau
-- 3. PostgreSQL
