CREATE DATABASE IF NOT EXISTS BI_OLAP_11;

USE BI_OLAP_11;

DROP TABLE IF EXISTS DM_Customer;
DROP TABLE IF EXISTS DM_Location;
DROP TABLE IF EXISTS DM_Product;
DROP TABLE IF EXISTS DM_Time;
DROP TABLE IF EXISTS DM_FactSales;

CREATE TABLE DM_FactSales (
	SalesOrderNumber varchar(255) not null,
	SalesOrderLineNumber varchar(100),
	CustomerID int not null,
	ProductID int not null,
	ShipToAddressID int not null,
	BillToAddressID int not null,
	ShipmentMethod varchar(100),
	UnitPrice numeric,
	Discount numeric(10,4),
	OrderQuantity int,
	OrderLineTotal numeric(10,4),
	OrderLineProfit numeric(10,4),
	TaxAmount numeric(10,4),
	OrderLineFreightCost numeric(10,4),
	OrderStatus int,
	OrderDate timestamp,
	DueDate timestamp,
	ShipDate timestamp,
	IsLateShipment integer,

	CONSTRAINT PK_FactSales PRIMARY KEY (SalesOrderNumber, SalesOrderLineNumber)

)
