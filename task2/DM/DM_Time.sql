CREATE DATABASE IF NOT EXISTS BI_OLAP_11;

USE BI_OLAP_11;

CREATE TABLE DM_Time (

	`Date` timestamp not null,
	DayNumberOfMonth integer,
	MonthNumberOfYear integer,
	CalendarYear integer,

	CONSTRAINT PK_DM_Time PRIMARY KEY (`Date`)

)
