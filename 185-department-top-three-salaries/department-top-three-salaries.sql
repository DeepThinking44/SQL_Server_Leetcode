WITH Pradeep AS (
    SELECT
        e.id,
        e.name,
        e.salary,
        d.name AS dep,
        DENSE_RANK() OVER(PARTITION BY d.name ORDER BY e.salary DESC) AS dr
    FROM
        Employee AS e
    LEFT JOIN
        Department AS d ON d.id = e.departmentId
)
SELECT
    p.dep AS Department,
    p.name AS Employee,
    p.salary AS Salary
FROM
    Pradeep AS p
WHERE
    p.dr <= 3
ORDER BY
    p.dep, 
    p.salary DESC;