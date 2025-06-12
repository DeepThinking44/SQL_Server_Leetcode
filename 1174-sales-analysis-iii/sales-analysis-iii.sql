SELECT
    P.product_id,
    P.product_name
FROM
    Product AS P
JOIN
    Sales AS S ON P.product_id = S.product_id
GROUP BY
    P.product_id,
    P.product_name
HAVING
    SUM(CASE WHEN S.sale_date >= '2019-01-01' AND S.sale_date <= '2019-03-31' THEN 1 ELSE 0 END) > 0
    AND
    SUM(CASE WHEN S.sale_date < '2019-01-01' OR S.sale_date > '2019-03-31' THEN 1 ELSE 0 END) = 0;
