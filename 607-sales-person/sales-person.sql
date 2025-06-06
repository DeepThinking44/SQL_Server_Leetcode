select sp.name 
from SalesPerson as sp
where sp.sales_id NOT IN (
select sales_id from Orders as o join Company as c on c.com_id=o.com_id where c.name ='RED'
)