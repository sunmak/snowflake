-- create table
truncate table META.LOAD.t_adventureWorksTables;

create or replace TABLE META.LOAD.t_adventureWorksTables (
	SourceSchema VARCHAR(100) NOT NULL
	, SourceTable VARCHAR(100) NOT NULL
	, TargetSystem VARCHAR(100) NOT NULL
	, TargetDatabase VARCHAR(100) NOT NULL
	, TargetSchema VARCHAR(100)
	, TargetTable VARCHAR(100)
	, LoadQuery VARCHAR(1000)
)
comment = 'Tables loaded from MobiSys and their corresponding target'
;
select * from META.LOAD.t_adventureWorksTables;