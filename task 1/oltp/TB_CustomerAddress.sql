CREATE DATABASE IF NOT EXISTS BI_OLTP_11;

USE BI_OLTP_11;

CREATE TABLE TB_CustomerAddress (
	CustomerID int not null,
	AddressID int not null,
	AddressType varchar(255) not null,

	CONSTRAINT PK_CustomerAddress PRIMARY KEY (CustomerID,AddressID),
	
	CONSTRAINT FK_Customer_CustomerAddress FOREIGN KEY (CustomerID)
	REFERENCES TB_Customer(CustomerID),

	CONSTRAINT FK_Address FOREIGN KEY (AddressID)
	REFERENCES TB_Address(AddressID)
)
