USE BI_OLAP_11;
select totalShipments.ShipmentMethod as 'Shipment Method', totalShipments.postalCode as 'Country Region', 
(lateShipments.lateShipmentsCount/totalShipments.totalShipmentsCount*100) as '% of lateShipments Shipments'
from (
	select count(x.ProductID) as lateShipmentsCount, y.PostalCode, x.ShipmentMethod
	from DM_FactSales x, DM_Location y
	where x.BillToAddressID = y.AddressID and x.IsLateShipment = true
	group by y.PostalCode, x.ShipmentMethod
     ) lateShipments,
     (
	select count(x.ProductID) as totalShipmentsCount, y.PostalCode, x.ShipmentMethod
	from DM_FactSales x, DM_Location y
	where x.BillToAddressID = y.AddressID 
	group by y.PostalCode, x.shipmentMethod) totalShipments
where lateShipments.PostalCode = totalShipments.PostalCode and lateShipments.ShipmentMethod = totalShipments.ShipmentMethod
group by totalShipments.PostalCode, totalShipments.ShipmentMethod