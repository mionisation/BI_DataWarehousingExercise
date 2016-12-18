

CREATE DATABASE IF NOT EXISTS BI_OLTP_11;

USE BI_OLTP_11;

CREATE TABLE TB_SalesOrderDetail (
	SalesOrderID int not null,
	SalesOrderDetailID int not null,
	OrderQty int not null,
	ProductID int not null,
	UnitPrice numeric not null,
	CONSTRAINT PK_SalesOrderDetail PRIMARY KEY (SalesOrderDetailID, SalesOrderID),

	CONSTRAINT FK_SalesOrder FOREIGN KEY (SalesOrderID)
	REFERENCES TB_SalesOrderHeader(SalesOrderID),

	CONSTRAINT FK_Product FOREIGN KEY (ProductID)
	REFERENCES TB_Product(ProductID)
)
