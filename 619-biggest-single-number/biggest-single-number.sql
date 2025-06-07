
SELECT MAX(num) As num
FROM (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(*) < 2
) AS UniqueNums;
