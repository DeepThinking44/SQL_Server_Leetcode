SELECT
    CAST(T.request_at AS DATE) AS Day,
    ROUND(
        CAST(SUM(CASE WHEN T.status IN ('cancelled_by_driver', 'cancelled_by_client') THEN 1 ELSE 0 END) AS DECIMAL(10, 2))
        /
        CAST(COUNT(T.id) AS DECIMAL(10, 2))
    , 2) AS "Cancellation Rate"
FROM
    Trips AS T
INNER JOIN
    Users AS U_Client ON T.client_id = U_Client.users_id
INNER JOIN
    Users AS U_Driver ON T.driver_id = U_Driver.users_id
WHERE
    T.request_at BETWEEN '2013-10-01' AND '2013-10-03'
    AND U_Client.banned = 'No'
    AND U_Driver.banned = 'No'
GROUP BY
    T.request_at
HAVING
    COUNT(T.id) >= 1
ORDER BY
    Day;
