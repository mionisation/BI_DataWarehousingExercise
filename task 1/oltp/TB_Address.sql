
CREATE DATABASE IF NOT EXISTS BI_OLTP_11;

USE BI_OLTP_11;

CREATE TABLE TB_Address (
	AddressID int not null,
	AddressLine varchar(255) not null,
	City varchar(255) not null,
	StateProvince varchar(255),
	CountryRegion varchar(255) not null,	
	PostalCode varchar(255) not null,
	CONSTRAINT PK_Address PRIMARY KEY (AddressID)
)
