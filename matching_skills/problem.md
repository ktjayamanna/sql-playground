# Data Science Skills Matching

## LinkedIn SQL Interview Question

You're tasked with finding the candidates best suited for an open Data Science job. You want to find candidates who are proficient in Python, Tableau, and PostgreSQL.

## Problem Statement

Write a query to list the candidates who possess **all** of the required skills for the job. Sort the output by candidate ID in ascending order.

## Assumption

- There are no duplicates in the candidates table.

## Schema

### candidates Table

| Column Name   | Type    |
|---------------|---------|
| candidate_id  | integer |
| skill         | varchar |

## Example Input

### candidates

| candidate_id | skill       |
|--------------|-------------|
| 123          | Python      |
| 123          | Tableau     |
| 123          | PostgreSQL  |
| 234          | R           |
| 234          | PowerBI     |
| 234          | SQL Server  |
| 345          | Python      |
| 345          | Tableau     |

## Example Output

| candidate_id |
|--------------|
| 123          |

## Explanation

Candidate 123 is displayed because they have Python, Tableau, and PostgreSQL skills.

Candidate 345 isn't included in the output because they're missing one of the required skills: PostgreSQL.

## Note

The dataset you are querying against may have different input & output - this is just an example!

[Source](https://datalemur.com/questions/matching-skills)