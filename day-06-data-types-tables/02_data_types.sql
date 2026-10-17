/*
Day 6 of #100DaysOfSQL
Topic: Data types (PostgreSQL)

Data types specify the expected format of a value.

Why? They're needed for data integrity: only the correct data is stored
in a column. They also help databases process data more quickly and
store it with less space.

Common examples:
INT                       a whole number, e.g. 123
                          range -2,147,483,648 to 2,147,483,647 (4 bytes)
NUMERIC(precision, scale) a precise number with fixed decimal points
                          precision = total digits, scale = digits after the decimal point
                          e.g. 123.456 fits NUMERIC(6, 3)
TEXT                      a string of characters of unlimited length, e.g. 'Hello, World!'
                          used for long-form text that doesn't fit VARCHAR's size limit
VARCHAR(n)                a variable-length string, where n is the maximum length
                          e.g. 'Hello' fits VARCHAR(10)
BOOLEAN                   true, false or NULL
DATE                      a date without time: YYYY-MM-DD, e.g. 2026-10-17
TIMESTAMP                 date and time without time zone: YYYY-MM-DD HH:MI:SS
TIMESTAMP WITH TIME ZONE  date and time with time zone, e.g. 2026-10-17 10:20:36+00:00
                          adjusts the stored time based on the time zone
*/

SELECT
    123::INT                                          AS int_value,
    123.456::NUMERIC(6, 3)                            AS numeric_value,
    'Hello, World!'::TEXT                             AS text_value,
    'Hello'::VARCHAR(10)                              AS varchar_value,
    TRUE::BOOLEAN                                     AS boolean_value,
    '2026-10-17'::DATE                                AS date_value,
    '2026-10-17 10:20:36'::TIMESTAMP                  AS timestamp_value,
    '2026-10-17 10:20:36+00:00'::TIMESTAMP WITH TIME ZONE AS timestamptz_value;

-- :: is PostgreSQL's shorthand for "convert to this data type"
