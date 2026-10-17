/*
Day 6 of #100DaysOfSQL
Topic: Order of execution

The order you WRITE a query is not the order SQL RUNS it.

Execution order:
1. FROM / JOIN      specifies the tables to retrieve data from and how to join them
2. WHERE            filters rows based on conditions
3. GROUP BY         groups rows that share a property so aggregate functions can be applied
4. HAVING           filters groups based on aggregate conditions, after GROUP BY
5. SELECT           selects the specific columns to display in the final result
6. DISTINCT         removes duplicate rows from the result set
7. ORDER BY         sorts the result set by the specified columns or values
8. LIMIT / OFFSET   limits the number of rows returned, often used for pagination

The numbers in the comments below show when each clause runs.
*/

SELECT                              -- 5
    job_title_short,
    COUNT(*) AS job_count
FROM                                -- 1
    job_postings_fact
WHERE                               -- 2
    salary_year_avg > 50000
GROUP BY                            -- 3
    job_title_short
HAVING                              -- 4
    COUNT(*) > 100
ORDER BY                            -- 7
    job_count DESC
LIMIT                               -- 8
    5;
