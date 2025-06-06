
Select M.customer_number from 

(select top 1 Count(customer_number) As Counting,customer_number from Orders group by customer_number order By Counting DESC) AS M