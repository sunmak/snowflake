create or replace stage RAW.ADVENTUREWORKS.S_RAW_ADVENTUREWORKS
  storage_integration = I_RAW
  url = 'azure://storedir.blob.core.windows.net/adventurework'
  file_format = RAW.ADVENTUREWORKS.F_CSV ;

  -- Run one time below command to check wether we are able to copy data from ADLS Gen 2 or not
    COPY INTO RAW.ADVENTUREWORKS.T_ADDRESS
    FROM @RAW.ADVENTUREWORKS.S_RAW_ADVENTUREWORKS/Person/Address/;