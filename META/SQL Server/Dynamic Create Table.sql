SELECT T.TABLE_NAME,
	'CREATE OR REPLACE TABLE RAW.ADVENTUREWORKS.t_' + T.TABLE_NAME  + ' (' +
	STRING_AGG((REPLACE(c.COLUMN_NAME,' ','_') + ' ' + 
			CASE 
				WHEN C.DATA_TYPE IN ('nvarchar', 'uniqueidentifier', 'hierarchyid', 'nchar', 'varbinary','xml') 
					THEN 'varchar' 
				WHEN C.DATA_TYPE IN ('bit')
					THEN 'boolean'
				WHEN C.DATA_TYPE IN ('money', 'numeric', 'smallint', 'smallmoney', 'tinyint')
					THEN 'numeric(38,4)'
				ELSE C.DATA_TYPE END), ',') 
	WITHIN GROUP ( ORDER BY ORDINAL_POSITION asc ) +');' AS Dynamic_Create_Table_Query
FROM AdventureWorks2019.INFORMATION_SCHEMA.TABLES T
JOIN AdventureWorks2019.INFORMATION_SCHEMA.COLUMNS C
	ON T.TABLE_NAME=C.TABLE_NAME
	AND T.TABLE_SCHEMA=C.TABLE_SCHEMA
WHERE TABLE_TYPE = 'BASE TABLE'
GROUP BY T.TABLE_NAME
;