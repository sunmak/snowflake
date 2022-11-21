SELECT
	TABLE_SCHEMA as Source_Schema, 
	TABLE_NAME as Source_Table, 
	'Snowflake' as Target_System, 
	'RAW' AS Target_Database, 
	'ADVENTUREWORKS' as Target_schema,
	't_'+ TABLE_NAME as Target_Table,
	'select * from '+ TABLE_SCHEMA + '.' + TABLE_NAME +';' as Query
FROM AdventureWorks2019.INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'
;

SELECT
	TABLE_NAME , count(1)
FROM AdventureWorks2019.INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'
group by TABLE_NAME
having count(1)>1
;

SELECT is_read_committed_snapshot_on,
       snapshot_isolation_state_desc,
       snapshot_isolation_state
FROM   sys.databases
WHERE  name = 'AdventureWorks2019'
;