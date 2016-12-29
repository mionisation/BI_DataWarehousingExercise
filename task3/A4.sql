USE BI_OLAP_11;
SET @currcount = NULL, @currvalue = NULL, @currc = 0;

select tab.rankC as 'Customer Rank', tab.cn as 'Customer Name', tab.rank as 'Product Rank', tab.pn as 'Product Name'
from
(
	select x.rankC as rankC, x.Name as cn, y.Name as pn,
	    @currcount := IF(@currvalue = x.Name, @currcount + 1, 1) AS rank,
	    @currvalue := x.Name AS whatever
	from (
		select cus.Name, cus.CustomerID, @currc := @currc + 1 AS rankC
		from(
			select c.Name, s.CustomerID, sum(s.OrderLineProfit)
			from DM_FactSales s, DM_Customer c
			where s.CustomerID = c.CustomerID
			group by c.Name
			order by sum(s.OrderLineProfit) desc
			limit 5) as cus
	) as x,
(
select p.Name, s.CustomerID, s.ProductID, sum(s.OrderQuantity)
from DM_FactSales s, DM_Product p
where p.ProductID = s.ProductID
group by s.ProductID, s.CustomerID
order by sum(s.OrderQuantity) desc
) as y
where x.CustomerID = y.CustomerID
) as tab
where rank <= 4;



