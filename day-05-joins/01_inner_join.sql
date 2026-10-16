/*
Day 5 of #100DaysOfSQL
INNER JOIN: only the matches

Keeps rows that match in both tables. Anything without a partner is dropped.
Use it when you only want complete, matched data.

Result: 2 rows. Job 3 (company 99) and Nova Labs (no jobs) are dropped.
*/

SELECT
    job_postings_fact.job_id,
    job_postings_fact.job_title_short,
    company_dim.name
FROM job_postings_fact
INNER JOIN company_dim
    ON job_postings_fact.company_id = company_dim.company_id;
