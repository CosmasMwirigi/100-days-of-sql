/*
Day 5 of #100DaysOfSQL
FULL OUTER JOIN: all of both tables

Keeps all rows from both tables, matched where possible, NULL where not.
Use it when you want to see everything, including what's missing on
either side. Great for spotting gaps in data.

Result: 4 rows. Both job 3 and Nova Labs appear, each with NULLs.
*/

SELECT
    job_postings_fact.job_id,
    job_postings_fact.job_title_short,
    company_dim.name
FROM job_postings_fact
FULL OUTER JOIN company_dim
    ON job_postings_fact.company_id = company_dim.company_id;
