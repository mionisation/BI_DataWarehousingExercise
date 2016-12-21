CREATE DATABASE IF NOT EXISTS BI_OLAP_11;

USE BI_OLAP_11;

CREATE TABLE DM_Product (

	ProductID int not null,
	ProductNumber varchar(255) not null,
	Name  varchar(255) not null,
	ProductModelName varchar(255),
	StandardCost numeric not null,
	ListPrice numeric not null,

	`Size` varchar(255),
	Weight numeric,

	ProductSubCategory int not null,
	ProductTopCategory int not null,

	SellStartDate timestamp not null default CURRENT_TIMESTAMP(),
	SellEndDate timestamp default CURRENT_TIMESTAMP(),
	DiscontinuedDate timestamp default CURRENT_TIMESTAMP(),
	IsBulkyItem integer,

	CONSTRAINT PK_DM_Product PRIMARY KEY (ProductID),

	CONSTRAINT FK_SellStartDate FOREIGN KEY (SellStartDate)
	REFERENCES DM_Time(`Date`),

	CONSTRAINT FK_SellEndDate FOREIGN KEY (SellEndDate)
	REFERENCES DM_Time(`Date`),

	CONSTRAINT FK_DiscontinuedDate FOREIGN KEY (DiscontinuedDate)
	REFERENCES DM_Time(`Date`)
)
