-- Solution 1: Using Common Table Expressions (CTEs) with a VALUES clause
-- Find candidates who possess all required skills for the Data Science job

WITH required_skills AS (
    SELECT skill
    FROM (VALUES ('Python'), ('Tableau'), ('PostgreSQL')) AS skills(skill)
),
candidate_skill_counts AS (
    SELECT
        c.candidate_id,
        COUNT(DISTINCT CASE WHEN c.skill IN (SELECT skill FROM required_skills) THEN c.skill END) AS matched_skills_count,
        (SELECT COUNT(*) FROM required_skills) AS required_skills_count
    FROM
        candidates c
    GROUP BY
        c.candidate_id
)
SELECT
    candidate_id
FROM
    candidate_skill_counts
WHERE
    matched_skills_count = required_skills_count
ORDER BY
    candidate_id ASC;
