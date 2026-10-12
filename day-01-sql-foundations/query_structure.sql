/*
Day 1 of #100DaysOfSQL
Topic: Basic SQL keywords and query structure

This is a multiple line comment.
The template below shows the order SQL keywords are written in a query.
Replace the placeholders (column1, table_name, condition, number)
with real names when working with an actual database.
*/

-- This is a single line comment

SELECT column1, column2          -- the columns to return
FROM table_name                  -- the table to read from
WHERE condition                  -- filter rows
GROUP BY column                  -- group rows that share a value
HAVING condition                 -- filter the groups
ORDER BY column1 ASC             -- sort results: ASC (ascending) or DESC (descending)
LIMIT number;                    -- cap the number of rows returned


-- DISTINCT returns only unique values
SELECT DISTINCT column1
FROM table_name;
