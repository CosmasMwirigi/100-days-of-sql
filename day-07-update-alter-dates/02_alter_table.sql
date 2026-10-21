/*
Day 7 of #100DaysOfSQL
Topic: ALTER TABLE in depth

Rules:
- ADD and DROP can be grouped with commas in one ALTER TABLE
- RENAME is always alone, in its own ALTER TABLE
- After renaming, every later statement must use the new name
*/

-- ADD and DROP grouped with commas
ALTER TABLE
    job_applied
ADD
    contact VARCHAR(50),
DROP COLUMN
    resume_file_name;


-- RENAME COLUMN needs the old column name and the new column name
ALTER TABLE
    job_applied
RENAME COLUMN
    contact TO contact_name;
-- From here on, use contact_name. "contact" no longer exists.


/* ---------- ALTER COLUMN ----------
Modifies the properties of an existing column.
*/

-- Change data type: only works when the old and new types are compatible
ALTER TABLE
    job_applied
ALTER COLUMN
    contact_name TYPE TEXT;

-- Limitation: some types can't be changed directly.
-- This fails, because text like 'submitted' can't become a number:
-- ALTER TABLE
--     job_applied
-- ALTER COLUMN
--     status TYPE INT;
-- ERROR: column "status" cannot be cast automatically to type integer

-- Set a default: used for new rows when no value is specified
ALTER TABLE
    job_applied
ALTER COLUMN
    status SET DEFAULT 'submitted';

INSERT INTO job_applied (
    job_id
)
VALUES
    (3);          -- status is filled in as 'submitted' automatically

-- Drop the default: new rows without a status now get NULL
ALTER TABLE
    job_applied
ALTER COLUMN
    status DROP DEFAULT;


/* ---------- DROP TABLE ----------
Deletes an existing table. Be extremely careful: there is no undo.
*/
DROP TABLE
    job_applied;
