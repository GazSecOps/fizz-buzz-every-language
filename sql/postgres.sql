-- PostgreSQL FizzBuzz
WITH RECURSIVE numbers(n) AS (
    SELECT 1
    UNION ALL
    SELECT n + 1 FROM numbers WHERE n < 100
)
SELECT
    CASE
        WHEN n % 15 = 0 THEN 'FizzBuzz'
        WHEN n % 3 = 0 THEN 'Fizz'
        WHEN n % 5 = 0 THEN 'Buzz'
        ELSE CAST(n AS TEXT)
    END AS result
FROM numbers;
