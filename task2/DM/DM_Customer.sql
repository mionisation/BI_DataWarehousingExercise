CREATE DATABASE IF NOT EXISTS BI_OLAP_11;

USE BI_OLAP_11;

DROP TABLE IF EXISTS DM_FactSales;
DROP TABLE IF EXISTS DM_Product;
DROP TABLE IF EXISTS DM_Customer;
DROP TABLE IF EXISTS DM_Location;
DROP TABLE IF EXISTS DM_Time;


CREATE TABLE DM_Customer (

	CustomerID int not null,
	Name varchar(150),
	BirthDate timestamp,
	Age integer,
	Gender varchar(10) 	,
	Email varchar(255),
	Phone varchar(255),

	CONSTRAINT PK_DM_Customer PRIMARY KEY (CustomerID)

)
