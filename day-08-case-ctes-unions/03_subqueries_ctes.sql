/*
Day 8 of #100DaysOfSQL
Topic: Subqueries and CTEs (Common Table Expressions)

Both organise and simplify complex queries by breaking them into
smaller, more manageable parts.

Which one?
- Subqueries are for simpler queries
- CTEs are for more complex queries
*/


/* ---------- Subquery ----------
A query nested inside a larger query.
It can be used in the SELECT, FROM and WHERE clauses.
*/
SELECT
    *
FROM
    (SELECT * FROM job_postings_fact WHERE EXTRACT(MONTH FROM job_posted_date) = 1) AS january_jobs;


/* ---------- CTE ----------
Defines a temporary result set that you can reference.
- Defined with WITH
- Can be referenced within a SELECT, INSERT, UPDATE or DELETE statement
*/
WITH january_jobs AS (    -- CTE definition starts here
    SELECT
        *
    FROM
        job_postings_fact
    WHERE
        EXTRACT(MONTH FROM job_posted_date) = 1
)                         -- CTE definition ends here
SELECT
    *
FROM
    january_jobs;
