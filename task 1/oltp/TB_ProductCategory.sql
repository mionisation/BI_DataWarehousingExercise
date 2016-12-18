CREATE DATABASE IF NOT EXISTS BI_OLTP_11;

USE BI_OLTP_11;

CREATE TABLE TB_ProductCategory (
	ProductCategoryID int not null,
	ParentProductCategoryID int,
	Name  varchar(255) not null,
	
	CONSTRAINT PK_ProductCategory PRIMARY KEY (ProductCategoryID),

	CONSTRAINT FK_ProductCategory FOREIGN KEY (ParentProductCategoryID)
	REFERENCES TB_ProductCategory(ProductCategoryID)
)
