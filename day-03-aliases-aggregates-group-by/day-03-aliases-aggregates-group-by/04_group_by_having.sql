/*
Day 3 of #100DaysOfSQL
Topic: GROUP BY and HAVING

GROUP BY groups rows that have the same values into summary rows,
e.g. "total number of sales by each item".

A plain column is just a column selected as-is, with no function around it.

The rule: every column in your SELECT must be either
  1. an aggregate (COUNT, SUM, AVG, MIN, MAX), or
  2. a column listed in GROUP BY.
*/


/* ---------- The problem: mixing plain columns with aggregates ----------
AVG(salary) wants to return 1 row. job_title wants to return all rows.
That can't work, so PostgreSQL, SQL Server and most databases return an error.

Like a teacher saying "the class average is 72%" and you asking
"whose name goes with that?" The question makes no sense:
the average belongs to the whole class.

SELECT
    job_title,
    AVG(salary)
FROM jobs;
*/


/* ---------- The fix: GROUP BY ---------- */
SELECT
    job_title,
    AVG(salary) AS avg_salary
FROM jobs
GROUP BY job_title;


/* ---------- HAVING ----------
HAVING filters a query based on aggregate functions and groupings.
It exists because you can't use aggregate functions in WHERE.

WHERE  filters rows   (before grouping)
HAVING filters groups (after grouping)
*/
SELECT
    job_title_short,
    COUNT(*)                       AS job_count,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
GROUP BY job_title_short
HAVING COUNT(*) > 100;
