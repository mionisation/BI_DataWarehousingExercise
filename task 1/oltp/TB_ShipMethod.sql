CREATE DATABASE IF NOT EXISTS BI_OLTP_11;

USE BI_OLTP_11;

CREATE TABLE TB_ShipMethod (
	ShipMethodID int not null,
	Name  varchar(255) not null,
	CostPerShipment numeric not null,
	CostPerUnit numeric not null,
	BulkyItemSurcharge numeric not null,

	CONSTRAINT PK_ShipMethod PRIMARY KEY (ShipMethodID)
)

