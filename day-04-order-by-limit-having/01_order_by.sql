/*
Day 4 of #100DaysOfSQL
Topic: ORDER BY

ORDER BY sorts your results. That's all.
It doesn't add or remove rows, it just changes their order.

ASC   ascending:  small to big, A to Z, oldest to newest (this is the default)
DESC  descending: big to small, Z to A, newest to oldest

Use DESC for any question with: highest, most, top, latest or biggest.

Tips:
1. ORDER BY always goes near the end of the query.
2. Without ORDER BY, SQL makes no promise about row order.
   If order matters, say so.
3. In SQLite, NULLs come first with ASC and last with DESC.
   Other databases can differ.
*/

-- Highest salary first
SELECT job_title, salary
FROM jobs
ORDER BY salary DESC;


/* ---------- Sorting by more than one column ----------
Sort by country first (A to Z). Where countries are the same,
sort those rows by salary, highest first.
The second column only acts as a tie-breaker inside the first.
*/
SELECT country, salary
FROM jobs
ORDER BY
    country,
    salary DESC;


/* ---------- Sorting by an alias ----------
You can sort by a name you created with AS.
*/
SELECT
    job_title,
    AVG(salary) AS avg_salary
FROM jobs
GROUP BY job_title
ORDER BY avg_salary DESC;
