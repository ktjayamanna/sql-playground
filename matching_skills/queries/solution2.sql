-- Solution 2: Using HAVING clause with COUNT and INTERSECT
-- Find candidates who possess all required skills for the Data Science job

SELECT
    candidate_id
FROM
    candidates
WHERE
    skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY
    candidate_id
HAVING
    COUNT(DISTINCT skill) = 3
ORDER BY
    candidate_id ASC;
