CREATE DATABASE IF NOT EXISTS BI_OLTP_11;

USE BI_OLTP_11;

DROP TABLE IF EXISTS TB_SalesOrderDetail;
DROP TABLE IF EXISTS TB_SalesOrderHeader;
DROP TABLE IF EXISTS TB_CustomerAddress;
DROP TABLE IF EXISTS TB_ShipMethod;
DROP TABLE IF EXISTS TB_Product;
DROP TABLE IF EXISTS TB_ProductCategory;
DROP TABLE IF EXISTS TB_Address;
DROP TABLE IF EXISTS TB_Customer;

CREATE TABLE TB_Customer (
	CustomerID int not null,
	Title varchar(255),
	FirstName varchar(255) not null,
	MiddleName varchar(255),
	LastName varchar(255) not null,
	Suffix varchar(255),
	EmailAddress varchar(255),
	Phone varchar(255),
	Gender varchar(255) not null,
	Birthdate varchar(255) not null,
	CONSTRAINT PK_Customer PRIMARY KEY (CustomerID)
)
