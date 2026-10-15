/*
Day 4 of #100DaysOfSQL
Topic: LIMIT and OFFSET

LIMIT cuts your results down to a set number of rows.
It always goes last, both when you write it and when SQL runs it.

When to use LIMIT:
- "Top", "highest 10", "first": ORDER BY ... DESC plus LIMIT
- Previewing a big table without loading thousands of rows
- Speed: smaller results load faster while you're testing

Pair it with ORDER BY:
LIMIT on its own just takes whichever rows come first, which could be anything.
To get a meaningful "top 5", sort first.
*/

-- LIMIT 5 alone: any 5 rows
SELECT job_title, salary
FROM jobs
LIMIT 5;

-- ORDER BY + LIMIT: the 5 highest salaries
SELECT job_title, salary
FROM jobs
ORDER BY salary DESC
LIMIT 5;


/* ---------- Bonus: OFFSET ----------
OFFSET skips rows before starting.
Useful for "the next 5" or page-by-page results.
*/

-- Skip the top 5, then show the next 5 (positions 6 to 10)
SELECT job_title, salary
FROM jobs
ORDER BY salary DESC
LIMIT 5 OFFSET 5;
