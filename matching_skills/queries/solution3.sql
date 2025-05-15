-- Solution 3: Using INTERSECT to find candidates with all required skills
-- Find candidates who possess all required skills for the Data Science job

-- Find candidates with Python
SELECT candidate_id FROM candidates WHERE skill = 'Python'
INTERSECT
-- Find candidates with Tableau
SELECT candidate_id FROM candidates WHERE skill = 'Tableau'
INTERSECT
-- Find candidates with PostgreSQL
SELECT candidate_id FROM candidates WHERE skill = 'PostgreSQL'
ORDER BY candidate_id ASC;
