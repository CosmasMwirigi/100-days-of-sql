/*
Day 5 of #100DaysOfSQL
LEFT JOIN: all of left + matches

Keeps every row from the first (left) table.
If there's no match on the right, it fills in NULL.
Use it when you want all of your main table, even if some details are missing.
This is the most common JOIN in real work.

Result: 3 rows. Job 3 stays, with NULL for the company name.
*/

SELECT
    job_postings_fact.job_id,
    job_postings_fact.job_title_short,
    company_dim.name
FROM job_postings_fact
LEFT JOIN company_dim
    ON job_postings_fact.company_id = company_dim.company_id;
