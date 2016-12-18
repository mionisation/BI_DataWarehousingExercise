
CREATE DATABASE IF NOT EXISTS BI_OLTP_11;

USE BI_OLTP_11;

CREATE TABLE TB_SalesOrderHeader (
	SalesOrderID int not null,
	RevisionNumber int not null,
	OrderDate timestamp not null,
	DueDate timestamp not null,
	ShipDate timestamp,
	Status int not null,
	SalesOrderNumber varchar(255) not null,
	CustomerID int not null,
	ShipToAddressID int not null,
	BillToAddressID int not null,
	ShipMethodID int not null,

	CONSTRAINT PK_SalesOrderHeader PRIMARY KEY (SalesOrderID),

	CONSTRAINT FK_BillToAddress FOREIGN KEY (BillToAddressID)
	REFERENCES TB_Address(AddressID),

	CONSTRAINT FK_ShipToAddress FOREIGN KEY (ShipToAddressID)
	REFERENCES TB_Address(AddressID),

	CONSTRAINT FK_Customer FOREIGN KEY (CustomerID)
	REFERENCES TB_Customer(CustomerID),

	CONSTRAINT FK_ShipMethod FOREIGN KEY (ShipMethodID)
	REFERENCES TB_ShipMethod(ShipMethodID)
)

