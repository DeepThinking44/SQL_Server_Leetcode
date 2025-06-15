SELECT 
    d.id,
    SUM(CASE WHEN d.month = 'Jan' THEN d.revenue ELSE NULL END) AS Jan_Revenue,
    SUM(CASE WHEN d.month = 'Feb' THEN d.revenue ELSE NULL END) AS Feb_Revenue,
    SUM(CASE WHEN d.month = 'Mar' THEN d.revenue ELSE NULL END) AS Mar_Revenue,
    SUM(CASE WHEN d.month = 'Apr' THEN d.revenue ELSE NULL END) AS Apr_Revenue,
    SUM(CASE WHEN d.month = 'May' THEN d.revenue ELSE NULL END) AS May_Revenue,
    SUM(CASE WHEN d.month = 'Jun' THEN d.revenue ELSE NULL END) AS Jun_Revenue,
    SUM(CASE WHEN d.month = 'Jul' THEN d.revenue ELSE NULL END) AS Jul_Revenue,
    SUM(CASE WHEN d.month = 'Aug' THEN d.revenue ELSE NULL END) AS Aug_Revenue,
    SUM(CASE WHEN d.month = 'Sep' THEN d.revenue ELSE NULL END) AS Sep_Revenue,
    SUM(CASE WHEN d.month = 'Oct' THEN d.revenue ELSE NULL END) AS Oct_Revenue,
    SUM(CASE WHEN d.month = 'Nov' THEN d.revenue ELSE NULL END) AS Nov_Revenue,
    SUM(CASE WHEN d.month = 'Dec' THEN d.revenue ELSE NULL END) AS Dec_Revenue
FROM 
    Department AS d
GROUP BY 
    d.id
ORDER BY 
    d.id;
