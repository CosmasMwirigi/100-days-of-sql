/*
Day 3 of #100DaysOfSQL
Topic: Aliases with AS

AS renames a column (or table) with a temporary name, called an alias.
It makes column names more readable. The original table is not changed.
*/

SELECT
    job_title_short AS job_title,
    job_location    AS location,
    job_via         AS online_platform
FROM job_postings_fact AS jpf;   -- tables can have aliases too


-- Practice problem: return six columns and rename two of them
SELECT
    job_id,
    job_title_short,
    job_location,
    job_via         AS job_posted_site,
    job_posted_date,
    salary_year_avg AS avg_yearly_salary
FROM job_postings_fact;
