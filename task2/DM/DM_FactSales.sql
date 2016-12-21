CREATE DATABASE IF NOT EXISTS BI_OLAP_11;

USE BI_OLAP_11;

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
	OrderDate timestamp default CURRENT_TIMESTAMP(),
	DueDate timestamp default CURRENT_TIMESTAMP(),
	ShipDate timestamp default CURRENT_TIMESTAMP(),
	IsLateShipment integer,

	CONSTRAINT PK_FactSales PRIMARY KEY (SalesOrderNumber, SalesOrderLineNumber),


	CONSTRAINT FK_Customer FOREIGN KEY (CustomerID)
	REFERENCES DM_Customer(CustomerID),

	CONSTRAINT FK_Product FOREIGN KEY (ProductID)
	REFERENCES DM_Product(ProductID),

	CONSTRAINT FK_ShipToAddress FOREIGN KEY (ShipToAddressID)
	REFERENCES DM_Location(AddressID),

	CONSTRAINT FK_BillToAddress FOREIGN KEY (BillToAddressID)
	REFERENCES DM_Location(AddressID),

	CONSTRAINT FK_OrderDate FOREIGN KEY (OrderDate)
	REFERENCES DM_Time(`Date`),

	CONSTRAINT FK_DueDate FOREIGN KEY (DueDate)
	REFERENCES DM_Time(`Date`),

	CONSTRAINT FK_ShipDate FOREIGN KEY (ShipDate)
	REFERENCES DM_Time(`Date`)
)
