
WITH wholetable AS (
    SELECT 
        p.project_id, 
        p.employee_id,
        e.experience_years* 1.0 as experience_years
    FROM Project AS p 
    JOIN Employee AS e 
        ON p.employee_id = e.employee_id
)
SELECT 
    w.project_id AS project_id,
    ROUND(AVG(w.experience_years), 2) AS average_years
FROM wholetable AS w 
GROUP BY w.project_id;
