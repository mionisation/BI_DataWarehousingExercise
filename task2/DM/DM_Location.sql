CREATE DATABASE IF NOT EXISTS BI_OLAP_11;

USE BI_OLAP_11;

CREATE TABLE DM_Location (

	AddressID int not null,
	City varchar(255) not null,
	StateProvince varchar(255),
	PostalCode varchar(255) not null,
	CountryRegion varchar(255) not null,

	CONSTRAINT PK_DM_Location PRIMARY KEY (AddressID)

)
