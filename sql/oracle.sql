SELECT
    CASE
        WHEN (n % 15) = 0 THEN 'FizzBuzz'
        WHEN (n % 3) = 0 THEN 'Fizz'
        WHEN (n % 5) = 0 THEN 'Buzz'
        ELSE CAST(n AS VARCHAR2)
    END AS result
FROM (
    SELECT LEVEL AS n
    FROM DUAL
    CONNECT BY LEVEL <= 100
);
