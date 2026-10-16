/*
Day 5 of #100DaysOfSQL
RIGHT JOIN: all of right + matches

The mirror image of LEFT JOIN: keeps every row from the right table.
People rarely use it. You can get the same result by swapping
the table order and using LEFT JOIN.

Result: 3 rows. Nova Labs stays, with NULL for the job columns.
*/

SELECT
    job_postings_fact.job_id,
    job_postings_fact.job_title_short,
    company_dim.name
FROM job_postings_fact
RIGHT JOIN company_dim
    ON job_postings_fact.company_id = company_dim.company_id;


-- Same result: swap the tables and use LEFT JOIN
SELECT
    job_postings_fact.job_id,
    job_postings_fact.job_title_short,
    company_dim.name
FROM company_dim
LEFT JOIN job_postings_fact
    ON job_postings_fact.company_id = company_dim.company_id;
