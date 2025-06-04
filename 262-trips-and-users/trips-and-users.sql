SELECT 
    request_at AS Day,
    ROUND(
        SUM(CASE WHEN status <> 'completed' THEN 1.0 ELSE 0.0 END) / 
        COUNT(*),
        2
    ) AS [Cancellation Rate]
FROM 
    Trips t
WHERE 
    request_at BETWEEN '2013-10-01' AND '2013-10-03'
    AND client_id IN (SELECT users_id FROM Users WHERE banned = 'No')
    AND driver_id IN (SELECT users_id FROM Users WHERE banned = 'No')
GROUP BY 
    request_at
ORDER BY 
    request_at;