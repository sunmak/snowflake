CREATE OR REPLACE FILE FORMAT META.LOAD.F_CSV 
TYPE = 'CSV' 
--COMPRESSION = 'GZIP' 
FIELD_DELIMITER = '|' 
RECORD_DELIMITER = '\n' 
SKIP_HEADER = 1 
FIELD_OPTIONALLY_ENCLOSED_BY = '\042' 
TRIM_SPACE = FALSE 
ERROR_ON_COLUMN_COUNT_MISMATCH = TRUE 
ESCAPE = '\134'
ESCAPE_UNENCLOSED_FIELD = '\134' 
DATE_FORMAT = 'AUTO' 
TIMESTAMP_FORMAT = 'AUTO' 
NULL_IF = ('NULL')
COMMENT = 'File Format for CSV Files';