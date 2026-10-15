/*
Day 4 of #100DaysOfSQL
Topic: WHERE vs HAVING

The question: "Show countries with more than 2 jobs"

WHERE  filters rows, before grouping. Works on plain columns.
HAVING filters groups, after grouping. Works on aggregates (COUNT, SUM, AVG, MIN, MAX).

Simple test: does your condition contain an aggregate function?
  YES -> HAVING
  NO  -> WHERE

HAVING needs GROUP BY (in normal use).
*/


/* ---------- This fails ----------
It fails because of the order SQL works in:
WHERE runs before the groups exist, so there is nothing to COUNT yet.

SELECT country, COUNT(job_id)
FROM jobs
WHERE COUNT(job_id) > 2      -- error
GROUP BY country;
*/


/* ---------- This works ---------- */
SELECT
    country,
    COUNT(job_id) AS job_count
FROM jobs
GROUP BY country
HAVING COUNT(job_id) > 2;
