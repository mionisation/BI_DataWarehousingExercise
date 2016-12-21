CREATE DATABASE IF NOT EXISTS BI_OLTP_11;

USE BI_OLTP_11;

CREATE TABLE TB_Product (
	ProductID int not null,
	Name  varchar(255) not null,
	ProductNumber varchar(255) not null,
	StandardCost numeric not null,
	ListPrice numeric not null,
	`Size` varchar(255),
	Weight numeric,
	ProductCategoryID int not null,
	ProductModelName varchar(255),
	SellStartDate timestamp not null,
	SellEndDate timestamp default CURRENT_TIMESTAMP(),
	DiscontinuedDate timestamp default CURRENT_TIMESTAMP(),
	
	CONSTRAINT PK_Product PRIMARY KEY (ProductID),

	CONSTRAINT FK_ProductCategory FOREIGN KEY (ProductCategoryID)
	REFERENCES TB_ProductCategory(ProductCategoryID)
)
