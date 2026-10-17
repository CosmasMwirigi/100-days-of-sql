/*
Day 6 of #100DaysOfSQL
Topic: ALTER TABLE and DROP TABLE

ALTER TABLE selects the table you'll add, delete or modify columns in.
It's similar to using FROM to specify a table for querying.

ADD            add a column
RENAME COLUMN  rename a column
ALTER COLUMN   change the data type of a column
DROP COLUMN    delete a column
DROP TABLE     delete a whole table

Each change below is its own ALTER TABLE statement, ending with a semicolon.
*/

-- Add a column
ALTER TABLE job_applied
    ADD contact VARCHAR(50);

-- Rename a column
ALTER TABLE job_applied
    RENAME COLUMN contact TO contact_name;

-- Change a column's data type
ALTER TABLE job_applied
    ALTER COLUMN contact_name TYPE TEXT;

-- Delete a column
ALTER TABLE job_applied
    DROP COLUMN contact_name;

-- Delete the whole table (careful: this can't be undone)
DROP TABLE job_applied;
