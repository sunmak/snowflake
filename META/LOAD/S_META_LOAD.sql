  create stage META.LOAD.S_META_LOAD
  storage_integration = I_META
  url = 'azure://storedir.blob.core.windows.net/prod'
  file_format = META.LOAD.F_CSV;
  