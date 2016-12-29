select c.Name as 'Customer Name', sum(s.OrderLineProfit) as 'Profit'
from DM_FactSales s, DM_Customer c
where s.CustomerID = c.CustomerID and s.OrderDate >= '2014-01-01' and  s.OrderDate < '2014-07-01' 
group by c.Name
order by sum(s.OrderLineProfit) desc
limit 10
