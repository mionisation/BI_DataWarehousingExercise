select x.Name, y.Name
from (
select c.Name, s.CustomerID, sum(s.OrderLineProfit)
from DM_FactSales s, DM_Customer c
where s.CustomerID = c.CustomerID
group by c.Name
order by sum(s.OrderLineProfit) desc
limit 5
) as x,
(
select p.Name, s.CustomerID, s.ProductID, sum(s.OrderQuantity)
from DM_FactSales s, DM_Product p
where p.ProductID = s.ProductID
group by s.ProductID, s.CustomerID
order by sum(s.OrderQuantity) desc
) as y
where x.CustomerID = y.CustomerID
